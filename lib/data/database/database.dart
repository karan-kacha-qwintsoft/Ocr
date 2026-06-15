import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';


part 'database.g.dart';

class Cards extends Table {
  TextColumn get id => text()(); // UUID
  TextColumn get cardType => text()(); // 'business' | 'visiting' | 'wedding' | 'aadhaar' | 'unknown'
  IntColumn get scanDate => integer()(); // Unix timestamp
  TextColumn get frontImage => text().nullable()();
  TextColumn get backImage => text().nullable()();
  TextColumn get rawTextFront => text().nullable()();
  TextColumn get rawTextBack => text().nullable()();
  RealColumn get overallConfidence => real().nullable()();
  BoolColumn get isFavourite => boolean().withDefault(const Constant(false))();
  TextColumn get tags => text().nullable()(); // JSON array
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class CardFieldsCore extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text().references(Cards, #id, onDelete: KeyAction.cascade)();
  TextColumn get fullName => text().nullable()();
  TextColumn get firstName => text().nullable()();
  TextColumn get lastName => text().nullable()();
  TextColumn get company => text().nullable()();
  TextColumn get designation => text().nullable()();
  TextColumn get emailPrimary => text().nullable()();
  TextColumn get emailSecondary => text().nullable()();
  TextColumn get phonePrimary => text().nullable()();
  TextColumn get phoneSecondary => text().nullable()();
  TextColumn get phoneWhatsapp => text().nullable()();
  TextColumn get website => text().nullable()();
  TextColumn get addressLine1 => text().nullable()();
  TextColumn get addressLine2 => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get pincode => text().nullable()();
  TextColumn get country => text().withDefault(const Constant('India'))();
  TextColumn get aadhaarNumber => text().nullable()();
  TextColumn get panNumber => text().nullable()();
  TextColumn get dob => text().nullable()();
  TextColumn get gender => text().nullable()();
  TextColumn get linkedinUrl => text().nullable()();
  TextColumn get twitterHandle => text().nullable()();
  TextColumn get instagramHandle => text().nullable()();
  TextColumn get weddingDate => text().nullable()();
  TextColumn get weddingVenue => text().nullable()();
  TextColumn get groomName => text().nullable()();
  TextColumn get brideName => text().nullable()();
  TextColumn get qrCodeData => text().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class CardFieldsDynamic extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text().references(Cards, #id, onDelete: KeyAction.cascade)();
  TextColumn get fieldKey => text()();
  TextColumn get fieldValue => text()();
  RealColumn get confidence => real().nullable()();
  TextColumn get source => text().nullable()(); // 'front' | 'back'
  BoolColumn get isUserLabelled => boolean().withDefault(const Constant(false))();
  IntColumn get createdAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class FieldDefinitions extends Table {
  TextColumn get id => text()();
  TextColumn get fieldKey => text().unique()();
  TextColumn get displayName => text().nullable()();
  IntColumn get occurrenceCount => integer().withDefault(const Constant(1))();
  BoolColumn get promotedToCore => boolean().withDefault(const Constant(false))();
  IntColumn get firstSeen => integer().nullable()();
  IntColumn get lastSeen => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class ScanLogs extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text().nullable().references(Cards, #id)();
  TextColumn get ocrEngine => text().nullable()();
  IntColumn get preprocessingDurationMs => integer().nullable()();
  IntColumn get ocrDurationMs => integer().nullable()();
  IntColumn get extractionDurationMs => integer().nullable()();
  IntColumn get totalDurationMs => integer().nullable()();
  TextColumn get errorMessage => text().nullable()();
  IntColumn get createdAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Android workaround removed for POC

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [Cards, CardFieldsCore, CardFieldsDynamic, FieldDefinitions, ScanLogs])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> saveExtractedCard({
    required CardsCompanion card,
    required CardFieldsCoreCompanion coreFields,
    required List<CardFieldsDynamicCompanion> dynamicFields,
  }) {
    return transaction(() async {
      await into(cards).insert(card);
      await into(cardFieldsCore).insert(coreFields);
      
      for (var df in dynamicFields) {
        await into(cardFieldsDynamic).insert(df);
        
        final fieldDef = await (select(fieldDefinitions)..where((t) => t.fieldKey.equals(df.fieldKey.value))).getSingleOrNull();
        if (fieldDef != null) {
          final newCount = fieldDef.occurrenceCount + 1;
          await (update(fieldDefinitions)..where((t) => t.id.equals(fieldDef.id))).write(
            FieldDefinitionsCompanion(occurrenceCount: Value(newCount)),
          );
        } else {
          await into(fieldDefinitions).insert(FieldDefinitionsCompanion(
            id: Value(df.id.value),
            fieldKey: df.fieldKey,
            displayName: df.fieldKey,
            occurrenceCount: const Value(1),
          ));
        }
      }
    });
  }
}
