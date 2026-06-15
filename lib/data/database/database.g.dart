// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CardsTable extends Cards with TableInfo<$CardsTable, Card> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardTypeMeta = const VerificationMeta(
    'cardType',
  );
  @override
  late final GeneratedColumn<String> cardType = GeneratedColumn<String>(
    'card_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scanDateMeta = const VerificationMeta(
    'scanDate',
  );
  @override
  late final GeneratedColumn<int> scanDate = GeneratedColumn<int>(
    'scan_date',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _frontImageMeta = const VerificationMeta(
    'frontImage',
  );
  @override
  late final GeneratedColumn<String> frontImage = GeneratedColumn<String>(
    'front_image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _backImageMeta = const VerificationMeta(
    'backImage',
  );
  @override
  late final GeneratedColumn<String> backImage = GeneratedColumn<String>(
    'back_image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rawTextFrontMeta = const VerificationMeta(
    'rawTextFront',
  );
  @override
  late final GeneratedColumn<String> rawTextFront = GeneratedColumn<String>(
    'raw_text_front',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rawTextBackMeta = const VerificationMeta(
    'rawTextBack',
  );
  @override
  late final GeneratedColumn<String> rawTextBack = GeneratedColumn<String>(
    'raw_text_back',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _overallConfidenceMeta = const VerificationMeta(
    'overallConfidence',
  );
  @override
  late final GeneratedColumn<double> overallConfidence =
      GeneratedColumn<double>(
        'overall_confidence',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _isFavouriteMeta = const VerificationMeta(
    'isFavourite',
  );
  @override
  late final GeneratedColumn<bool> isFavourite = GeneratedColumn<bool>(
    'is_favourite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favourite" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
    'tags',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardType,
    scanDate,
    frontImage,
    backImage,
    rawTextFront,
    rawTextBack,
    overallConfidence,
    isFavourite,
    tags,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cards';
  @override
  VerificationContext validateIntegrity(
    Insertable<Card> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_type')) {
      context.handle(
        _cardTypeMeta,
        cardType.isAcceptableOrUnknown(data['card_type']!, _cardTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_cardTypeMeta);
    }
    if (data.containsKey('scan_date')) {
      context.handle(
        _scanDateMeta,
        scanDate.isAcceptableOrUnknown(data['scan_date']!, _scanDateMeta),
      );
    } else if (isInserting) {
      context.missing(_scanDateMeta);
    }
    if (data.containsKey('front_image')) {
      context.handle(
        _frontImageMeta,
        frontImage.isAcceptableOrUnknown(data['front_image']!, _frontImageMeta),
      );
    }
    if (data.containsKey('back_image')) {
      context.handle(
        _backImageMeta,
        backImage.isAcceptableOrUnknown(data['back_image']!, _backImageMeta),
      );
    }
    if (data.containsKey('raw_text_front')) {
      context.handle(
        _rawTextFrontMeta,
        rawTextFront.isAcceptableOrUnknown(
          data['raw_text_front']!,
          _rawTextFrontMeta,
        ),
      );
    }
    if (data.containsKey('raw_text_back')) {
      context.handle(
        _rawTextBackMeta,
        rawTextBack.isAcceptableOrUnknown(
          data['raw_text_back']!,
          _rawTextBackMeta,
        ),
      );
    }
    if (data.containsKey('overall_confidence')) {
      context.handle(
        _overallConfidenceMeta,
        overallConfidence.isAcceptableOrUnknown(
          data['overall_confidence']!,
          _overallConfidenceMeta,
        ),
      );
    }
    if (data.containsKey('is_favourite')) {
      context.handle(
        _isFavouriteMeta,
        isFavourite.isAcceptableOrUnknown(
          data['is_favourite']!,
          _isFavouriteMeta,
        ),
      );
    }
    if (data.containsKey('tags')) {
      context.handle(
        _tagsMeta,
        tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Card map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Card(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cardType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_type'],
      )!,
      scanDate: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}scan_date'],
      )!,
      frontImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}front_image'],
      ),
      backImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}back_image'],
      ),
      rawTextFront: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_text_front'],
      ),
      rawTextBack: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_text_back'],
      ),
      overallConfidence: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}overall_confidence'],
      ),
      isFavourite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favourite'],
      )!,
      tags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CardsTable createAlias(String alias) {
    return $CardsTable(attachedDatabase, alias);
  }
}

class Card extends DataClass implements Insertable<Card> {
  final String id;
  final String cardType;
  final int scanDate;
  final String? frontImage;
  final String? backImage;
  final String? rawTextFront;
  final String? rawTextBack;
  final double? overallConfidence;
  final bool isFavourite;
  final String? tags;
  final int createdAt;
  final int updatedAt;
  const Card({
    required this.id,
    required this.cardType,
    required this.scanDate,
    this.frontImage,
    this.backImage,
    this.rawTextFront,
    this.rawTextBack,
    this.overallConfidence,
    required this.isFavourite,
    this.tags,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['card_type'] = Variable<String>(cardType);
    map['scan_date'] = Variable<int>(scanDate);
    if (!nullToAbsent || frontImage != null) {
      map['front_image'] = Variable<String>(frontImage);
    }
    if (!nullToAbsent || backImage != null) {
      map['back_image'] = Variable<String>(backImage);
    }
    if (!nullToAbsent || rawTextFront != null) {
      map['raw_text_front'] = Variable<String>(rawTextFront);
    }
    if (!nullToAbsent || rawTextBack != null) {
      map['raw_text_back'] = Variable<String>(rawTextBack);
    }
    if (!nullToAbsent || overallConfidence != null) {
      map['overall_confidence'] = Variable<double>(overallConfidence);
    }
    map['is_favourite'] = Variable<bool>(isFavourite);
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  CardsCompanion toCompanion(bool nullToAbsent) {
    return CardsCompanion(
      id: Value(id),
      cardType: Value(cardType),
      scanDate: Value(scanDate),
      frontImage: frontImage == null && nullToAbsent
          ? const Value.absent()
          : Value(frontImage),
      backImage: backImage == null && nullToAbsent
          ? const Value.absent()
          : Value(backImage),
      rawTextFront: rawTextFront == null && nullToAbsent
          ? const Value.absent()
          : Value(rawTextFront),
      rawTextBack: rawTextBack == null && nullToAbsent
          ? const Value.absent()
          : Value(rawTextBack),
      overallConfidence: overallConfidence == null && nullToAbsent
          ? const Value.absent()
          : Value(overallConfidence),
      isFavourite: Value(isFavourite),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Card.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Card(
      id: serializer.fromJson<String>(json['id']),
      cardType: serializer.fromJson<String>(json['cardType']),
      scanDate: serializer.fromJson<int>(json['scanDate']),
      frontImage: serializer.fromJson<String?>(json['frontImage']),
      backImage: serializer.fromJson<String?>(json['backImage']),
      rawTextFront: serializer.fromJson<String?>(json['rawTextFront']),
      rawTextBack: serializer.fromJson<String?>(json['rawTextBack']),
      overallConfidence: serializer.fromJson<double?>(
        json['overallConfidence'],
      ),
      isFavourite: serializer.fromJson<bool>(json['isFavourite']),
      tags: serializer.fromJson<String?>(json['tags']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardType': serializer.toJson<String>(cardType),
      'scanDate': serializer.toJson<int>(scanDate),
      'frontImage': serializer.toJson<String?>(frontImage),
      'backImage': serializer.toJson<String?>(backImage),
      'rawTextFront': serializer.toJson<String?>(rawTextFront),
      'rawTextBack': serializer.toJson<String?>(rawTextBack),
      'overallConfidence': serializer.toJson<double?>(overallConfidence),
      'isFavourite': serializer.toJson<bool>(isFavourite),
      'tags': serializer.toJson<String?>(tags),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Card copyWith({
    String? id,
    String? cardType,
    int? scanDate,
    Value<String?> frontImage = const Value.absent(),
    Value<String?> backImage = const Value.absent(),
    Value<String?> rawTextFront = const Value.absent(),
    Value<String?> rawTextBack = const Value.absent(),
    Value<double?> overallConfidence = const Value.absent(),
    bool? isFavourite,
    Value<String?> tags = const Value.absent(),
    int? createdAt,
    int? updatedAt,
  }) => Card(
    id: id ?? this.id,
    cardType: cardType ?? this.cardType,
    scanDate: scanDate ?? this.scanDate,
    frontImage: frontImage.present ? frontImage.value : this.frontImage,
    backImage: backImage.present ? backImage.value : this.backImage,
    rawTextFront: rawTextFront.present ? rawTextFront.value : this.rawTextFront,
    rawTextBack: rawTextBack.present ? rawTextBack.value : this.rawTextBack,
    overallConfidence: overallConfidence.present
        ? overallConfidence.value
        : this.overallConfidence,
    isFavourite: isFavourite ?? this.isFavourite,
    tags: tags.present ? tags.value : this.tags,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Card copyWithCompanion(CardsCompanion data) {
    return Card(
      id: data.id.present ? data.id.value : this.id,
      cardType: data.cardType.present ? data.cardType.value : this.cardType,
      scanDate: data.scanDate.present ? data.scanDate.value : this.scanDate,
      frontImage: data.frontImage.present
          ? data.frontImage.value
          : this.frontImage,
      backImage: data.backImage.present ? data.backImage.value : this.backImage,
      rawTextFront: data.rawTextFront.present
          ? data.rawTextFront.value
          : this.rawTextFront,
      rawTextBack: data.rawTextBack.present
          ? data.rawTextBack.value
          : this.rawTextBack,
      overallConfidence: data.overallConfidence.present
          ? data.overallConfidence.value
          : this.overallConfidence,
      isFavourite: data.isFavourite.present
          ? data.isFavourite.value
          : this.isFavourite,
      tags: data.tags.present ? data.tags.value : this.tags,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Card(')
          ..write('id: $id, ')
          ..write('cardType: $cardType, ')
          ..write('scanDate: $scanDate, ')
          ..write('frontImage: $frontImage, ')
          ..write('backImage: $backImage, ')
          ..write('rawTextFront: $rawTextFront, ')
          ..write('rawTextBack: $rawTextBack, ')
          ..write('overallConfidence: $overallConfidence, ')
          ..write('isFavourite: $isFavourite, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    cardType,
    scanDate,
    frontImage,
    backImage,
    rawTextFront,
    rawTextBack,
    overallConfidence,
    isFavourite,
    tags,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Card &&
          other.id == this.id &&
          other.cardType == this.cardType &&
          other.scanDate == this.scanDate &&
          other.frontImage == this.frontImage &&
          other.backImage == this.backImage &&
          other.rawTextFront == this.rawTextFront &&
          other.rawTextBack == this.rawTextBack &&
          other.overallConfidence == this.overallConfidence &&
          other.isFavourite == this.isFavourite &&
          other.tags == this.tags &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CardsCompanion extends UpdateCompanion<Card> {
  final Value<String> id;
  final Value<String> cardType;
  final Value<int> scanDate;
  final Value<String?> frontImage;
  final Value<String?> backImage;
  final Value<String?> rawTextFront;
  final Value<String?> rawTextBack;
  final Value<double?> overallConfidence;
  final Value<bool> isFavourite;
  final Value<String?> tags;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const CardsCompanion({
    this.id = const Value.absent(),
    this.cardType = const Value.absent(),
    this.scanDate = const Value.absent(),
    this.frontImage = const Value.absent(),
    this.backImage = const Value.absent(),
    this.rawTextFront = const Value.absent(),
    this.rawTextBack = const Value.absent(),
    this.overallConfidence = const Value.absent(),
    this.isFavourite = const Value.absent(),
    this.tags = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CardsCompanion.insert({
    required String id,
    required String cardType,
    required int scanDate,
    this.frontImage = const Value.absent(),
    this.backImage = const Value.absent(),
    this.rawTextFront = const Value.absent(),
    this.rawTextBack = const Value.absent(),
    this.overallConfidence = const Value.absent(),
    this.isFavourite = const Value.absent(),
    this.tags = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cardType = Value(cardType),
       scanDate = Value(scanDate),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Card> custom({
    Expression<String>? id,
    Expression<String>? cardType,
    Expression<int>? scanDate,
    Expression<String>? frontImage,
    Expression<String>? backImage,
    Expression<String>? rawTextFront,
    Expression<String>? rawTextBack,
    Expression<double>? overallConfidence,
    Expression<bool>? isFavourite,
    Expression<String>? tags,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardType != null) 'card_type': cardType,
      if (scanDate != null) 'scan_date': scanDate,
      if (frontImage != null) 'front_image': frontImage,
      if (backImage != null) 'back_image': backImage,
      if (rawTextFront != null) 'raw_text_front': rawTextFront,
      if (rawTextBack != null) 'raw_text_back': rawTextBack,
      if (overallConfidence != null) 'overall_confidence': overallConfidence,
      if (isFavourite != null) 'is_favourite': isFavourite,
      if (tags != null) 'tags': tags,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CardsCompanion copyWith({
    Value<String>? id,
    Value<String>? cardType,
    Value<int>? scanDate,
    Value<String?>? frontImage,
    Value<String?>? backImage,
    Value<String?>? rawTextFront,
    Value<String?>? rawTextBack,
    Value<double?>? overallConfidence,
    Value<bool>? isFavourite,
    Value<String?>? tags,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return CardsCompanion(
      id: id ?? this.id,
      cardType: cardType ?? this.cardType,
      scanDate: scanDate ?? this.scanDate,
      frontImage: frontImage ?? this.frontImage,
      backImage: backImage ?? this.backImage,
      rawTextFront: rawTextFront ?? this.rawTextFront,
      rawTextBack: rawTextBack ?? this.rawTextBack,
      overallConfidence: overallConfidence ?? this.overallConfidence,
      isFavourite: isFavourite ?? this.isFavourite,
      tags: tags ?? this.tags,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardType.present) {
      map['card_type'] = Variable<String>(cardType.value);
    }
    if (scanDate.present) {
      map['scan_date'] = Variable<int>(scanDate.value);
    }
    if (frontImage.present) {
      map['front_image'] = Variable<String>(frontImage.value);
    }
    if (backImage.present) {
      map['back_image'] = Variable<String>(backImage.value);
    }
    if (rawTextFront.present) {
      map['raw_text_front'] = Variable<String>(rawTextFront.value);
    }
    if (rawTextBack.present) {
      map['raw_text_back'] = Variable<String>(rawTextBack.value);
    }
    if (overallConfidence.present) {
      map['overall_confidence'] = Variable<double>(overallConfidence.value);
    }
    if (isFavourite.present) {
      map['is_favourite'] = Variable<bool>(isFavourite.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardsCompanion(')
          ..write('id: $id, ')
          ..write('cardType: $cardType, ')
          ..write('scanDate: $scanDate, ')
          ..write('frontImage: $frontImage, ')
          ..write('backImage: $backImage, ')
          ..write('rawTextFront: $rawTextFront, ')
          ..write('rawTextBack: $rawTextBack, ')
          ..write('overallConfidence: $overallConfidence, ')
          ..write('isFavourite: $isFavourite, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CardFieldsCoreTable extends CardFieldsCore
    with TableInfo<$CardFieldsCoreTable, CardFieldsCoreData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardFieldsCoreTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
    'card_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cards (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _companyMeta = const VerificationMeta(
    'company',
  );
  @override
  late final GeneratedColumn<String> company = GeneratedColumn<String>(
    'company',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _designationMeta = const VerificationMeta(
    'designation',
  );
  @override
  late final GeneratedColumn<String> designation = GeneratedColumn<String>(
    'designation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailPrimaryMeta = const VerificationMeta(
    'emailPrimary',
  );
  @override
  late final GeneratedColumn<String> emailPrimary = GeneratedColumn<String>(
    'email_primary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailSecondaryMeta = const VerificationMeta(
    'emailSecondary',
  );
  @override
  late final GeneratedColumn<String> emailSecondary = GeneratedColumn<String>(
    'email_secondary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phonePrimaryMeta = const VerificationMeta(
    'phonePrimary',
  );
  @override
  late final GeneratedColumn<String> phonePrimary = GeneratedColumn<String>(
    'phone_primary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneSecondaryMeta = const VerificationMeta(
    'phoneSecondary',
  );
  @override
  late final GeneratedColumn<String> phoneSecondary = GeneratedColumn<String>(
    'phone_secondary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneWhatsappMeta = const VerificationMeta(
    'phoneWhatsapp',
  );
  @override
  late final GeneratedColumn<String> phoneWhatsapp = GeneratedColumn<String>(
    'phone_whatsapp',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _websiteMeta = const VerificationMeta(
    'website',
  );
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
    'website',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressLine1Meta = const VerificationMeta(
    'addressLine1',
  );
  @override
  late final GeneratedColumn<String> addressLine1 = GeneratedColumn<String>(
    'address_line1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressLine2Meta = const VerificationMeta(
    'addressLine2',
  );
  @override
  late final GeneratedColumn<String> addressLine2 = GeneratedColumn<String>(
    'address_line2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
    'state',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pincodeMeta = const VerificationMeta(
    'pincode',
  );
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
    'pincode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _countryMeta = const VerificationMeta(
    'country',
  );
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
    'country',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('India'),
  );
  static const VerificationMeta _aadhaarNumberMeta = const VerificationMeta(
    'aadhaarNumber',
  );
  @override
  late final GeneratedColumn<String> aadhaarNumber = GeneratedColumn<String>(
    'aadhaar_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _panNumberMeta = const VerificationMeta(
    'panNumber',
  );
  @override
  late final GeneratedColumn<String> panNumber = GeneratedColumn<String>(
    'pan_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dobMeta = const VerificationMeta('dob');
  @override
  late final GeneratedColumn<String> dob = GeneratedColumn<String>(
    'dob',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _linkedinUrlMeta = const VerificationMeta(
    'linkedinUrl',
  );
  @override
  late final GeneratedColumn<String> linkedinUrl = GeneratedColumn<String>(
    'linkedin_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _twitterHandleMeta = const VerificationMeta(
    'twitterHandle',
  );
  @override
  late final GeneratedColumn<String> twitterHandle = GeneratedColumn<String>(
    'twitter_handle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _instagramHandleMeta = const VerificationMeta(
    'instagramHandle',
  );
  @override
  late final GeneratedColumn<String> instagramHandle = GeneratedColumn<String>(
    'instagram_handle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weddingDateMeta = const VerificationMeta(
    'weddingDate',
  );
  @override
  late final GeneratedColumn<String> weddingDate = GeneratedColumn<String>(
    'wedding_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weddingVenueMeta = const VerificationMeta(
    'weddingVenue',
  );
  @override
  late final GeneratedColumn<String> weddingVenue = GeneratedColumn<String>(
    'wedding_venue',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _groomNameMeta = const VerificationMeta(
    'groomName',
  );
  @override
  late final GeneratedColumn<String> groomName = GeneratedColumn<String>(
    'groom_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _brideNameMeta = const VerificationMeta(
    'brideName',
  );
  @override
  late final GeneratedColumn<String> brideName = GeneratedColumn<String>(
    'bride_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _qrCodeDataMeta = const VerificationMeta(
    'qrCodeData',
  );
  @override
  late final GeneratedColumn<String> qrCodeData = GeneratedColumn<String>(
    'qr_code_data',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardId,
    fullName,
    firstName,
    lastName,
    company,
    designation,
    emailPrimary,
    emailSecondary,
    phonePrimary,
    phoneSecondary,
    phoneWhatsapp,
    website,
    addressLine1,
    addressLine2,
    city,
    state,
    pincode,
    country,
    aadhaarNumber,
    panNumber,
    dob,
    gender,
    linkedinUrl,
    twitterHandle,
    instagramHandle,
    weddingDate,
    weddingVenue,
    groomName,
    brideName,
    qrCodeData,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'card_fields_core';
  @override
  VerificationContext validateIntegrity(
    Insertable<CardFieldsCoreData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_id')) {
      context.handle(
        _cardIdMeta,
        cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta),
      );
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    }
    if (data.containsKey('company')) {
      context.handle(
        _companyMeta,
        company.isAcceptableOrUnknown(data['company']!, _companyMeta),
      );
    }
    if (data.containsKey('designation')) {
      context.handle(
        _designationMeta,
        designation.isAcceptableOrUnknown(
          data['designation']!,
          _designationMeta,
        ),
      );
    }
    if (data.containsKey('email_primary')) {
      context.handle(
        _emailPrimaryMeta,
        emailPrimary.isAcceptableOrUnknown(
          data['email_primary']!,
          _emailPrimaryMeta,
        ),
      );
    }
    if (data.containsKey('email_secondary')) {
      context.handle(
        _emailSecondaryMeta,
        emailSecondary.isAcceptableOrUnknown(
          data['email_secondary']!,
          _emailSecondaryMeta,
        ),
      );
    }
    if (data.containsKey('phone_primary')) {
      context.handle(
        _phonePrimaryMeta,
        phonePrimary.isAcceptableOrUnknown(
          data['phone_primary']!,
          _phonePrimaryMeta,
        ),
      );
    }
    if (data.containsKey('phone_secondary')) {
      context.handle(
        _phoneSecondaryMeta,
        phoneSecondary.isAcceptableOrUnknown(
          data['phone_secondary']!,
          _phoneSecondaryMeta,
        ),
      );
    }
    if (data.containsKey('phone_whatsapp')) {
      context.handle(
        _phoneWhatsappMeta,
        phoneWhatsapp.isAcceptableOrUnknown(
          data['phone_whatsapp']!,
          _phoneWhatsappMeta,
        ),
      );
    }
    if (data.containsKey('website')) {
      context.handle(
        _websiteMeta,
        website.isAcceptableOrUnknown(data['website']!, _websiteMeta),
      );
    }
    if (data.containsKey('address_line1')) {
      context.handle(
        _addressLine1Meta,
        addressLine1.isAcceptableOrUnknown(
          data['address_line1']!,
          _addressLine1Meta,
        ),
      );
    }
    if (data.containsKey('address_line2')) {
      context.handle(
        _addressLine2Meta,
        addressLine2.isAcceptableOrUnknown(
          data['address_line2']!,
          _addressLine2Meta,
        ),
      );
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta,
        city.isAcceptableOrUnknown(data['city']!, _cityMeta),
      );
    }
    if (data.containsKey('state')) {
      context.handle(
        _stateMeta,
        state.isAcceptableOrUnknown(data['state']!, _stateMeta),
      );
    }
    if (data.containsKey('pincode')) {
      context.handle(
        _pincodeMeta,
        pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta),
      );
    }
    if (data.containsKey('country')) {
      context.handle(
        _countryMeta,
        country.isAcceptableOrUnknown(data['country']!, _countryMeta),
      );
    }
    if (data.containsKey('aadhaar_number')) {
      context.handle(
        _aadhaarNumberMeta,
        aadhaarNumber.isAcceptableOrUnknown(
          data['aadhaar_number']!,
          _aadhaarNumberMeta,
        ),
      );
    }
    if (data.containsKey('pan_number')) {
      context.handle(
        _panNumberMeta,
        panNumber.isAcceptableOrUnknown(data['pan_number']!, _panNumberMeta),
      );
    }
    if (data.containsKey('dob')) {
      context.handle(
        _dobMeta,
        dob.isAcceptableOrUnknown(data['dob']!, _dobMeta),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    }
    if (data.containsKey('linkedin_url')) {
      context.handle(
        _linkedinUrlMeta,
        linkedinUrl.isAcceptableOrUnknown(
          data['linkedin_url']!,
          _linkedinUrlMeta,
        ),
      );
    }
    if (data.containsKey('twitter_handle')) {
      context.handle(
        _twitterHandleMeta,
        twitterHandle.isAcceptableOrUnknown(
          data['twitter_handle']!,
          _twitterHandleMeta,
        ),
      );
    }
    if (data.containsKey('instagram_handle')) {
      context.handle(
        _instagramHandleMeta,
        instagramHandle.isAcceptableOrUnknown(
          data['instagram_handle']!,
          _instagramHandleMeta,
        ),
      );
    }
    if (data.containsKey('wedding_date')) {
      context.handle(
        _weddingDateMeta,
        weddingDate.isAcceptableOrUnknown(
          data['wedding_date']!,
          _weddingDateMeta,
        ),
      );
    }
    if (data.containsKey('wedding_venue')) {
      context.handle(
        _weddingVenueMeta,
        weddingVenue.isAcceptableOrUnknown(
          data['wedding_venue']!,
          _weddingVenueMeta,
        ),
      );
    }
    if (data.containsKey('groom_name')) {
      context.handle(
        _groomNameMeta,
        groomName.isAcceptableOrUnknown(data['groom_name']!, _groomNameMeta),
      );
    }
    if (data.containsKey('bride_name')) {
      context.handle(
        _brideNameMeta,
        brideName.isAcceptableOrUnknown(data['bride_name']!, _brideNameMeta),
      );
    }
    if (data.containsKey('qr_code_data')) {
      context.handle(
        _qrCodeDataMeta,
        qrCodeData.isAcceptableOrUnknown(
          data['qr_code_data']!,
          _qrCodeDataMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardFieldsCoreData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CardFieldsCoreData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cardId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_id'],
      )!,
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      ),
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      ),
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      ),
      company: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company'],
      ),
      designation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}designation'],
      ),
      emailPrimary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email_primary'],
      ),
      emailSecondary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email_secondary'],
      ),
      phonePrimary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_primary'],
      ),
      phoneSecondary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_secondary'],
      ),
      phoneWhatsapp: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_whatsapp'],
      ),
      website: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}website'],
      ),
      addressLine1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_line1'],
      ),
      addressLine2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_line2'],
      ),
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      ),
      state: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state'],
      ),
      pincode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pincode'],
      ),
      country: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country'],
      )!,
      aadhaarNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}aadhaar_number'],
      ),
      panNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pan_number'],
      ),
      dob: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dob'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      ),
      linkedinUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}linkedin_url'],
      ),
      twitterHandle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}twitter_handle'],
      ),
      instagramHandle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instagram_handle'],
      ),
      weddingDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wedding_date'],
      ),
      weddingVenue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wedding_venue'],
      ),
      groomName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}groom_name'],
      ),
      brideName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bride_name'],
      ),
      qrCodeData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code_data'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $CardFieldsCoreTable createAlias(String alias) {
    return $CardFieldsCoreTable(attachedDatabase, alias);
  }
}

class CardFieldsCoreData extends DataClass
    implements Insertable<CardFieldsCoreData> {
  final String id;
  final String cardId;
  final String? fullName;
  final String? firstName;
  final String? lastName;
  final String? company;
  final String? designation;
  final String? emailPrimary;
  final String? emailSecondary;
  final String? phonePrimary;
  final String? phoneSecondary;
  final String? phoneWhatsapp;
  final String? website;
  final String? addressLine1;
  final String? addressLine2;
  final String? city;
  final String? state;
  final String? pincode;
  final String country;
  final String? aadhaarNumber;
  final String? panNumber;
  final String? dob;
  final String? gender;
  final String? linkedinUrl;
  final String? twitterHandle;
  final String? instagramHandle;
  final String? weddingDate;
  final String? weddingVenue;
  final String? groomName;
  final String? brideName;
  final String? qrCodeData;
  final String? notes;
  const CardFieldsCoreData({
    required this.id,
    required this.cardId,
    this.fullName,
    this.firstName,
    this.lastName,
    this.company,
    this.designation,
    this.emailPrimary,
    this.emailSecondary,
    this.phonePrimary,
    this.phoneSecondary,
    this.phoneWhatsapp,
    this.website,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.pincode,
    required this.country,
    this.aadhaarNumber,
    this.panNumber,
    this.dob,
    this.gender,
    this.linkedinUrl,
    this.twitterHandle,
    this.instagramHandle,
    this.weddingDate,
    this.weddingVenue,
    this.groomName,
    this.brideName,
    this.qrCodeData,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['card_id'] = Variable<String>(cardId);
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<String>(company);
    }
    if (!nullToAbsent || designation != null) {
      map['designation'] = Variable<String>(designation);
    }
    if (!nullToAbsent || emailPrimary != null) {
      map['email_primary'] = Variable<String>(emailPrimary);
    }
    if (!nullToAbsent || emailSecondary != null) {
      map['email_secondary'] = Variable<String>(emailSecondary);
    }
    if (!nullToAbsent || phonePrimary != null) {
      map['phone_primary'] = Variable<String>(phonePrimary);
    }
    if (!nullToAbsent || phoneSecondary != null) {
      map['phone_secondary'] = Variable<String>(phoneSecondary);
    }
    if (!nullToAbsent || phoneWhatsapp != null) {
      map['phone_whatsapp'] = Variable<String>(phoneWhatsapp);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String>(website);
    }
    if (!nullToAbsent || addressLine1 != null) {
      map['address_line1'] = Variable<String>(addressLine1);
    }
    if (!nullToAbsent || addressLine2 != null) {
      map['address_line2'] = Variable<String>(addressLine2);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    map['country'] = Variable<String>(country);
    if (!nullToAbsent || aadhaarNumber != null) {
      map['aadhaar_number'] = Variable<String>(aadhaarNumber);
    }
    if (!nullToAbsent || panNumber != null) {
      map['pan_number'] = Variable<String>(panNumber);
    }
    if (!nullToAbsent || dob != null) {
      map['dob'] = Variable<String>(dob);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || linkedinUrl != null) {
      map['linkedin_url'] = Variable<String>(linkedinUrl);
    }
    if (!nullToAbsent || twitterHandle != null) {
      map['twitter_handle'] = Variable<String>(twitterHandle);
    }
    if (!nullToAbsent || instagramHandle != null) {
      map['instagram_handle'] = Variable<String>(instagramHandle);
    }
    if (!nullToAbsent || weddingDate != null) {
      map['wedding_date'] = Variable<String>(weddingDate);
    }
    if (!nullToAbsent || weddingVenue != null) {
      map['wedding_venue'] = Variable<String>(weddingVenue);
    }
    if (!nullToAbsent || groomName != null) {
      map['groom_name'] = Variable<String>(groomName);
    }
    if (!nullToAbsent || brideName != null) {
      map['bride_name'] = Variable<String>(brideName);
    }
    if (!nullToAbsent || qrCodeData != null) {
      map['qr_code_data'] = Variable<String>(qrCodeData);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  CardFieldsCoreCompanion toCompanion(bool nullToAbsent) {
    return CardFieldsCoreCompanion(
      id: Value(id),
      cardId: Value(cardId),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      designation: designation == null && nullToAbsent
          ? const Value.absent()
          : Value(designation),
      emailPrimary: emailPrimary == null && nullToAbsent
          ? const Value.absent()
          : Value(emailPrimary),
      emailSecondary: emailSecondary == null && nullToAbsent
          ? const Value.absent()
          : Value(emailSecondary),
      phonePrimary: phonePrimary == null && nullToAbsent
          ? const Value.absent()
          : Value(phonePrimary),
      phoneSecondary: phoneSecondary == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneSecondary),
      phoneWhatsapp: phoneWhatsapp == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneWhatsapp),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      addressLine1: addressLine1 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine1),
      addressLine2: addressLine2 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine2),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state: state == null && nullToAbsent
          ? const Value.absent()
          : Value(state),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      country: Value(country),
      aadhaarNumber: aadhaarNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(aadhaarNumber),
      panNumber: panNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(panNumber),
      dob: dob == null && nullToAbsent ? const Value.absent() : Value(dob),
      gender: gender == null && nullToAbsent
          ? const Value.absent()
          : Value(gender),
      linkedinUrl: linkedinUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(linkedinUrl),
      twitterHandle: twitterHandle == null && nullToAbsent
          ? const Value.absent()
          : Value(twitterHandle),
      instagramHandle: instagramHandle == null && nullToAbsent
          ? const Value.absent()
          : Value(instagramHandle),
      weddingDate: weddingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(weddingDate),
      weddingVenue: weddingVenue == null && nullToAbsent
          ? const Value.absent()
          : Value(weddingVenue),
      groomName: groomName == null && nullToAbsent
          ? const Value.absent()
          : Value(groomName),
      brideName: brideName == null && nullToAbsent
          ? const Value.absent()
          : Value(brideName),
      qrCodeData: qrCodeData == null && nullToAbsent
          ? const Value.absent()
          : Value(qrCodeData),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory CardFieldsCoreData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardFieldsCoreData(
      id: serializer.fromJson<String>(json['id']),
      cardId: serializer.fromJson<String>(json['cardId']),
      fullName: serializer.fromJson<String?>(json['fullName']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      company: serializer.fromJson<String?>(json['company']),
      designation: serializer.fromJson<String?>(json['designation']),
      emailPrimary: serializer.fromJson<String?>(json['emailPrimary']),
      emailSecondary: serializer.fromJson<String?>(json['emailSecondary']),
      phonePrimary: serializer.fromJson<String?>(json['phonePrimary']),
      phoneSecondary: serializer.fromJson<String?>(json['phoneSecondary']),
      phoneWhatsapp: serializer.fromJson<String?>(json['phoneWhatsapp']),
      website: serializer.fromJson<String?>(json['website']),
      addressLine1: serializer.fromJson<String?>(json['addressLine1']),
      addressLine2: serializer.fromJson<String?>(json['addressLine2']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      country: serializer.fromJson<String>(json['country']),
      aadhaarNumber: serializer.fromJson<String?>(json['aadhaarNumber']),
      panNumber: serializer.fromJson<String?>(json['panNumber']),
      dob: serializer.fromJson<String?>(json['dob']),
      gender: serializer.fromJson<String?>(json['gender']),
      linkedinUrl: serializer.fromJson<String?>(json['linkedinUrl']),
      twitterHandle: serializer.fromJson<String?>(json['twitterHandle']),
      instagramHandle: serializer.fromJson<String?>(json['instagramHandle']),
      weddingDate: serializer.fromJson<String?>(json['weddingDate']),
      weddingVenue: serializer.fromJson<String?>(json['weddingVenue']),
      groomName: serializer.fromJson<String?>(json['groomName']),
      brideName: serializer.fromJson<String?>(json['brideName']),
      qrCodeData: serializer.fromJson<String?>(json['qrCodeData']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardId': serializer.toJson<String>(cardId),
      'fullName': serializer.toJson<String?>(fullName),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'company': serializer.toJson<String?>(company),
      'designation': serializer.toJson<String?>(designation),
      'emailPrimary': serializer.toJson<String?>(emailPrimary),
      'emailSecondary': serializer.toJson<String?>(emailSecondary),
      'phonePrimary': serializer.toJson<String?>(phonePrimary),
      'phoneSecondary': serializer.toJson<String?>(phoneSecondary),
      'phoneWhatsapp': serializer.toJson<String?>(phoneWhatsapp),
      'website': serializer.toJson<String?>(website),
      'addressLine1': serializer.toJson<String?>(addressLine1),
      'addressLine2': serializer.toJson<String?>(addressLine2),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'pincode': serializer.toJson<String?>(pincode),
      'country': serializer.toJson<String>(country),
      'aadhaarNumber': serializer.toJson<String?>(aadhaarNumber),
      'panNumber': serializer.toJson<String?>(panNumber),
      'dob': serializer.toJson<String?>(dob),
      'gender': serializer.toJson<String?>(gender),
      'linkedinUrl': serializer.toJson<String?>(linkedinUrl),
      'twitterHandle': serializer.toJson<String?>(twitterHandle),
      'instagramHandle': serializer.toJson<String?>(instagramHandle),
      'weddingDate': serializer.toJson<String?>(weddingDate),
      'weddingVenue': serializer.toJson<String?>(weddingVenue),
      'groomName': serializer.toJson<String?>(groomName),
      'brideName': serializer.toJson<String?>(brideName),
      'qrCodeData': serializer.toJson<String?>(qrCodeData),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  CardFieldsCoreData copyWith({
    String? id,
    String? cardId,
    Value<String?> fullName = const Value.absent(),
    Value<String?> firstName = const Value.absent(),
    Value<String?> lastName = const Value.absent(),
    Value<String?> company = const Value.absent(),
    Value<String?> designation = const Value.absent(),
    Value<String?> emailPrimary = const Value.absent(),
    Value<String?> emailSecondary = const Value.absent(),
    Value<String?> phonePrimary = const Value.absent(),
    Value<String?> phoneSecondary = const Value.absent(),
    Value<String?> phoneWhatsapp = const Value.absent(),
    Value<String?> website = const Value.absent(),
    Value<String?> addressLine1 = const Value.absent(),
    Value<String?> addressLine2 = const Value.absent(),
    Value<String?> city = const Value.absent(),
    Value<String?> state = const Value.absent(),
    Value<String?> pincode = const Value.absent(),
    String? country,
    Value<String?> aadhaarNumber = const Value.absent(),
    Value<String?> panNumber = const Value.absent(),
    Value<String?> dob = const Value.absent(),
    Value<String?> gender = const Value.absent(),
    Value<String?> linkedinUrl = const Value.absent(),
    Value<String?> twitterHandle = const Value.absent(),
    Value<String?> instagramHandle = const Value.absent(),
    Value<String?> weddingDate = const Value.absent(),
    Value<String?> weddingVenue = const Value.absent(),
    Value<String?> groomName = const Value.absent(),
    Value<String?> brideName = const Value.absent(),
    Value<String?> qrCodeData = const Value.absent(),
    Value<String?> notes = const Value.absent(),
  }) => CardFieldsCoreData(
    id: id ?? this.id,
    cardId: cardId ?? this.cardId,
    fullName: fullName.present ? fullName.value : this.fullName,
    firstName: firstName.present ? firstName.value : this.firstName,
    lastName: lastName.present ? lastName.value : this.lastName,
    company: company.present ? company.value : this.company,
    designation: designation.present ? designation.value : this.designation,
    emailPrimary: emailPrimary.present ? emailPrimary.value : this.emailPrimary,
    emailSecondary: emailSecondary.present
        ? emailSecondary.value
        : this.emailSecondary,
    phonePrimary: phonePrimary.present ? phonePrimary.value : this.phonePrimary,
    phoneSecondary: phoneSecondary.present
        ? phoneSecondary.value
        : this.phoneSecondary,
    phoneWhatsapp: phoneWhatsapp.present
        ? phoneWhatsapp.value
        : this.phoneWhatsapp,
    website: website.present ? website.value : this.website,
    addressLine1: addressLine1.present ? addressLine1.value : this.addressLine1,
    addressLine2: addressLine2.present ? addressLine2.value : this.addressLine2,
    city: city.present ? city.value : this.city,
    state: state.present ? state.value : this.state,
    pincode: pincode.present ? pincode.value : this.pincode,
    country: country ?? this.country,
    aadhaarNumber: aadhaarNumber.present
        ? aadhaarNumber.value
        : this.aadhaarNumber,
    panNumber: panNumber.present ? panNumber.value : this.panNumber,
    dob: dob.present ? dob.value : this.dob,
    gender: gender.present ? gender.value : this.gender,
    linkedinUrl: linkedinUrl.present ? linkedinUrl.value : this.linkedinUrl,
    twitterHandle: twitterHandle.present
        ? twitterHandle.value
        : this.twitterHandle,
    instagramHandle: instagramHandle.present
        ? instagramHandle.value
        : this.instagramHandle,
    weddingDate: weddingDate.present ? weddingDate.value : this.weddingDate,
    weddingVenue: weddingVenue.present ? weddingVenue.value : this.weddingVenue,
    groomName: groomName.present ? groomName.value : this.groomName,
    brideName: brideName.present ? brideName.value : this.brideName,
    qrCodeData: qrCodeData.present ? qrCodeData.value : this.qrCodeData,
    notes: notes.present ? notes.value : this.notes,
  );
  CardFieldsCoreData copyWithCompanion(CardFieldsCoreCompanion data) {
    return CardFieldsCoreData(
      id: data.id.present ? data.id.value : this.id,
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      company: data.company.present ? data.company.value : this.company,
      designation: data.designation.present
          ? data.designation.value
          : this.designation,
      emailPrimary: data.emailPrimary.present
          ? data.emailPrimary.value
          : this.emailPrimary,
      emailSecondary: data.emailSecondary.present
          ? data.emailSecondary.value
          : this.emailSecondary,
      phonePrimary: data.phonePrimary.present
          ? data.phonePrimary.value
          : this.phonePrimary,
      phoneSecondary: data.phoneSecondary.present
          ? data.phoneSecondary.value
          : this.phoneSecondary,
      phoneWhatsapp: data.phoneWhatsapp.present
          ? data.phoneWhatsapp.value
          : this.phoneWhatsapp,
      website: data.website.present ? data.website.value : this.website,
      addressLine1: data.addressLine1.present
          ? data.addressLine1.value
          : this.addressLine1,
      addressLine2: data.addressLine2.present
          ? data.addressLine2.value
          : this.addressLine2,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      country: data.country.present ? data.country.value : this.country,
      aadhaarNumber: data.aadhaarNumber.present
          ? data.aadhaarNumber.value
          : this.aadhaarNumber,
      panNumber: data.panNumber.present ? data.panNumber.value : this.panNumber,
      dob: data.dob.present ? data.dob.value : this.dob,
      gender: data.gender.present ? data.gender.value : this.gender,
      linkedinUrl: data.linkedinUrl.present
          ? data.linkedinUrl.value
          : this.linkedinUrl,
      twitterHandle: data.twitterHandle.present
          ? data.twitterHandle.value
          : this.twitterHandle,
      instagramHandle: data.instagramHandle.present
          ? data.instagramHandle.value
          : this.instagramHandle,
      weddingDate: data.weddingDate.present
          ? data.weddingDate.value
          : this.weddingDate,
      weddingVenue: data.weddingVenue.present
          ? data.weddingVenue.value
          : this.weddingVenue,
      groomName: data.groomName.present ? data.groomName.value : this.groomName,
      brideName: data.brideName.present ? data.brideName.value : this.brideName,
      qrCodeData: data.qrCodeData.present
          ? data.qrCodeData.value
          : this.qrCodeData,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CardFieldsCoreData(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('fullName: $fullName, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('company: $company, ')
          ..write('designation: $designation, ')
          ..write('emailPrimary: $emailPrimary, ')
          ..write('emailSecondary: $emailSecondary, ')
          ..write('phonePrimary: $phonePrimary, ')
          ..write('phoneSecondary: $phoneSecondary, ')
          ..write('phoneWhatsapp: $phoneWhatsapp, ')
          ..write('website: $website, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pincode: $pincode, ')
          ..write('country: $country, ')
          ..write('aadhaarNumber: $aadhaarNumber, ')
          ..write('panNumber: $panNumber, ')
          ..write('dob: $dob, ')
          ..write('gender: $gender, ')
          ..write('linkedinUrl: $linkedinUrl, ')
          ..write('twitterHandle: $twitterHandle, ')
          ..write('instagramHandle: $instagramHandle, ')
          ..write('weddingDate: $weddingDate, ')
          ..write('weddingVenue: $weddingVenue, ')
          ..write('groomName: $groomName, ')
          ..write('brideName: $brideName, ')
          ..write('qrCodeData: $qrCodeData, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    cardId,
    fullName,
    firstName,
    lastName,
    company,
    designation,
    emailPrimary,
    emailSecondary,
    phonePrimary,
    phoneSecondary,
    phoneWhatsapp,
    website,
    addressLine1,
    addressLine2,
    city,
    state,
    pincode,
    country,
    aadhaarNumber,
    panNumber,
    dob,
    gender,
    linkedinUrl,
    twitterHandle,
    instagramHandle,
    weddingDate,
    weddingVenue,
    groomName,
    brideName,
    qrCodeData,
    notes,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardFieldsCoreData &&
          other.id == this.id &&
          other.cardId == this.cardId &&
          other.fullName == this.fullName &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.company == this.company &&
          other.designation == this.designation &&
          other.emailPrimary == this.emailPrimary &&
          other.emailSecondary == this.emailSecondary &&
          other.phonePrimary == this.phonePrimary &&
          other.phoneSecondary == this.phoneSecondary &&
          other.phoneWhatsapp == this.phoneWhatsapp &&
          other.website == this.website &&
          other.addressLine1 == this.addressLine1 &&
          other.addressLine2 == this.addressLine2 &&
          other.city == this.city &&
          other.state == this.state &&
          other.pincode == this.pincode &&
          other.country == this.country &&
          other.aadhaarNumber == this.aadhaarNumber &&
          other.panNumber == this.panNumber &&
          other.dob == this.dob &&
          other.gender == this.gender &&
          other.linkedinUrl == this.linkedinUrl &&
          other.twitterHandle == this.twitterHandle &&
          other.instagramHandle == this.instagramHandle &&
          other.weddingDate == this.weddingDate &&
          other.weddingVenue == this.weddingVenue &&
          other.groomName == this.groomName &&
          other.brideName == this.brideName &&
          other.qrCodeData == this.qrCodeData &&
          other.notes == this.notes);
}

class CardFieldsCoreCompanion extends UpdateCompanion<CardFieldsCoreData> {
  final Value<String> id;
  final Value<String> cardId;
  final Value<String?> fullName;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> company;
  final Value<String?> designation;
  final Value<String?> emailPrimary;
  final Value<String?> emailSecondary;
  final Value<String?> phonePrimary;
  final Value<String?> phoneSecondary;
  final Value<String?> phoneWhatsapp;
  final Value<String?> website;
  final Value<String?> addressLine1;
  final Value<String?> addressLine2;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> pincode;
  final Value<String> country;
  final Value<String?> aadhaarNumber;
  final Value<String?> panNumber;
  final Value<String?> dob;
  final Value<String?> gender;
  final Value<String?> linkedinUrl;
  final Value<String?> twitterHandle;
  final Value<String?> instagramHandle;
  final Value<String?> weddingDate;
  final Value<String?> weddingVenue;
  final Value<String?> groomName;
  final Value<String?> brideName;
  final Value<String?> qrCodeData;
  final Value<String?> notes;
  final Value<int> rowid;
  const CardFieldsCoreCompanion({
    this.id = const Value.absent(),
    this.cardId = const Value.absent(),
    this.fullName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.company = const Value.absent(),
    this.designation = const Value.absent(),
    this.emailPrimary = const Value.absent(),
    this.emailSecondary = const Value.absent(),
    this.phonePrimary = const Value.absent(),
    this.phoneSecondary = const Value.absent(),
    this.phoneWhatsapp = const Value.absent(),
    this.website = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pincode = const Value.absent(),
    this.country = const Value.absent(),
    this.aadhaarNumber = const Value.absent(),
    this.panNumber = const Value.absent(),
    this.dob = const Value.absent(),
    this.gender = const Value.absent(),
    this.linkedinUrl = const Value.absent(),
    this.twitterHandle = const Value.absent(),
    this.instagramHandle = const Value.absent(),
    this.weddingDate = const Value.absent(),
    this.weddingVenue = const Value.absent(),
    this.groomName = const Value.absent(),
    this.brideName = const Value.absent(),
    this.qrCodeData = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CardFieldsCoreCompanion.insert({
    required String id,
    required String cardId,
    this.fullName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.company = const Value.absent(),
    this.designation = const Value.absent(),
    this.emailPrimary = const Value.absent(),
    this.emailSecondary = const Value.absent(),
    this.phonePrimary = const Value.absent(),
    this.phoneSecondary = const Value.absent(),
    this.phoneWhatsapp = const Value.absent(),
    this.website = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pincode = const Value.absent(),
    this.country = const Value.absent(),
    this.aadhaarNumber = const Value.absent(),
    this.panNumber = const Value.absent(),
    this.dob = const Value.absent(),
    this.gender = const Value.absent(),
    this.linkedinUrl = const Value.absent(),
    this.twitterHandle = const Value.absent(),
    this.instagramHandle = const Value.absent(),
    this.weddingDate = const Value.absent(),
    this.weddingVenue = const Value.absent(),
    this.groomName = const Value.absent(),
    this.brideName = const Value.absent(),
    this.qrCodeData = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cardId = Value(cardId);
  static Insertable<CardFieldsCoreData> custom({
    Expression<String>? id,
    Expression<String>? cardId,
    Expression<String>? fullName,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? company,
    Expression<String>? designation,
    Expression<String>? emailPrimary,
    Expression<String>? emailSecondary,
    Expression<String>? phonePrimary,
    Expression<String>? phoneSecondary,
    Expression<String>? phoneWhatsapp,
    Expression<String>? website,
    Expression<String>? addressLine1,
    Expression<String>? addressLine2,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? pincode,
    Expression<String>? country,
    Expression<String>? aadhaarNumber,
    Expression<String>? panNumber,
    Expression<String>? dob,
    Expression<String>? gender,
    Expression<String>? linkedinUrl,
    Expression<String>? twitterHandle,
    Expression<String>? instagramHandle,
    Expression<String>? weddingDate,
    Expression<String>? weddingVenue,
    Expression<String>? groomName,
    Expression<String>? brideName,
    Expression<String>? qrCodeData,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardId != null) 'card_id': cardId,
      if (fullName != null) 'full_name': fullName,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (company != null) 'company': company,
      if (designation != null) 'designation': designation,
      if (emailPrimary != null) 'email_primary': emailPrimary,
      if (emailSecondary != null) 'email_secondary': emailSecondary,
      if (phonePrimary != null) 'phone_primary': phonePrimary,
      if (phoneSecondary != null) 'phone_secondary': phoneSecondary,
      if (phoneWhatsapp != null) 'phone_whatsapp': phoneWhatsapp,
      if (website != null) 'website': website,
      if (addressLine1 != null) 'address_line1': addressLine1,
      if (addressLine2 != null) 'address_line2': addressLine2,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (pincode != null) 'pincode': pincode,
      if (country != null) 'country': country,
      if (aadhaarNumber != null) 'aadhaar_number': aadhaarNumber,
      if (panNumber != null) 'pan_number': panNumber,
      if (dob != null) 'dob': dob,
      if (gender != null) 'gender': gender,
      if (linkedinUrl != null) 'linkedin_url': linkedinUrl,
      if (twitterHandle != null) 'twitter_handle': twitterHandle,
      if (instagramHandle != null) 'instagram_handle': instagramHandle,
      if (weddingDate != null) 'wedding_date': weddingDate,
      if (weddingVenue != null) 'wedding_venue': weddingVenue,
      if (groomName != null) 'groom_name': groomName,
      if (brideName != null) 'bride_name': brideName,
      if (qrCodeData != null) 'qr_code_data': qrCodeData,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CardFieldsCoreCompanion copyWith({
    Value<String>? id,
    Value<String>? cardId,
    Value<String?>? fullName,
    Value<String?>? firstName,
    Value<String?>? lastName,
    Value<String?>? company,
    Value<String?>? designation,
    Value<String?>? emailPrimary,
    Value<String?>? emailSecondary,
    Value<String?>? phonePrimary,
    Value<String?>? phoneSecondary,
    Value<String?>? phoneWhatsapp,
    Value<String?>? website,
    Value<String?>? addressLine1,
    Value<String?>? addressLine2,
    Value<String?>? city,
    Value<String?>? state,
    Value<String?>? pincode,
    Value<String>? country,
    Value<String?>? aadhaarNumber,
    Value<String?>? panNumber,
    Value<String?>? dob,
    Value<String?>? gender,
    Value<String?>? linkedinUrl,
    Value<String?>? twitterHandle,
    Value<String?>? instagramHandle,
    Value<String?>? weddingDate,
    Value<String?>? weddingVenue,
    Value<String?>? groomName,
    Value<String?>? brideName,
    Value<String?>? qrCodeData,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return CardFieldsCoreCompanion(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      fullName: fullName ?? this.fullName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      company: company ?? this.company,
      designation: designation ?? this.designation,
      emailPrimary: emailPrimary ?? this.emailPrimary,
      emailSecondary: emailSecondary ?? this.emailSecondary,
      phonePrimary: phonePrimary ?? this.phonePrimary,
      phoneSecondary: phoneSecondary ?? this.phoneSecondary,
      phoneWhatsapp: phoneWhatsapp ?? this.phoneWhatsapp,
      website: website ?? this.website,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      city: city ?? this.city,
      state: state ?? this.state,
      pincode: pincode ?? this.pincode,
      country: country ?? this.country,
      aadhaarNumber: aadhaarNumber ?? this.aadhaarNumber,
      panNumber: panNumber ?? this.panNumber,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      linkedinUrl: linkedinUrl ?? this.linkedinUrl,
      twitterHandle: twitterHandle ?? this.twitterHandle,
      instagramHandle: instagramHandle ?? this.instagramHandle,
      weddingDate: weddingDate ?? this.weddingDate,
      weddingVenue: weddingVenue ?? this.weddingVenue,
      groomName: groomName ?? this.groomName,
      brideName: brideName ?? this.brideName,
      qrCodeData: qrCodeData ?? this.qrCodeData,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (emailPrimary.present) {
      map['email_primary'] = Variable<String>(emailPrimary.value);
    }
    if (emailSecondary.present) {
      map['email_secondary'] = Variable<String>(emailSecondary.value);
    }
    if (phonePrimary.present) {
      map['phone_primary'] = Variable<String>(phonePrimary.value);
    }
    if (phoneSecondary.present) {
      map['phone_secondary'] = Variable<String>(phoneSecondary.value);
    }
    if (phoneWhatsapp.present) {
      map['phone_whatsapp'] = Variable<String>(phoneWhatsapp.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (addressLine1.present) {
      map['address_line1'] = Variable<String>(addressLine1.value);
    }
    if (addressLine2.present) {
      map['address_line2'] = Variable<String>(addressLine2.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (aadhaarNumber.present) {
      map['aadhaar_number'] = Variable<String>(aadhaarNumber.value);
    }
    if (panNumber.present) {
      map['pan_number'] = Variable<String>(panNumber.value);
    }
    if (dob.present) {
      map['dob'] = Variable<String>(dob.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (linkedinUrl.present) {
      map['linkedin_url'] = Variable<String>(linkedinUrl.value);
    }
    if (twitterHandle.present) {
      map['twitter_handle'] = Variable<String>(twitterHandle.value);
    }
    if (instagramHandle.present) {
      map['instagram_handle'] = Variable<String>(instagramHandle.value);
    }
    if (weddingDate.present) {
      map['wedding_date'] = Variable<String>(weddingDate.value);
    }
    if (weddingVenue.present) {
      map['wedding_venue'] = Variable<String>(weddingVenue.value);
    }
    if (groomName.present) {
      map['groom_name'] = Variable<String>(groomName.value);
    }
    if (brideName.present) {
      map['bride_name'] = Variable<String>(brideName.value);
    }
    if (qrCodeData.present) {
      map['qr_code_data'] = Variable<String>(qrCodeData.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardFieldsCoreCompanion(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('fullName: $fullName, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('company: $company, ')
          ..write('designation: $designation, ')
          ..write('emailPrimary: $emailPrimary, ')
          ..write('emailSecondary: $emailSecondary, ')
          ..write('phonePrimary: $phonePrimary, ')
          ..write('phoneSecondary: $phoneSecondary, ')
          ..write('phoneWhatsapp: $phoneWhatsapp, ')
          ..write('website: $website, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pincode: $pincode, ')
          ..write('country: $country, ')
          ..write('aadhaarNumber: $aadhaarNumber, ')
          ..write('panNumber: $panNumber, ')
          ..write('dob: $dob, ')
          ..write('gender: $gender, ')
          ..write('linkedinUrl: $linkedinUrl, ')
          ..write('twitterHandle: $twitterHandle, ')
          ..write('instagramHandle: $instagramHandle, ')
          ..write('weddingDate: $weddingDate, ')
          ..write('weddingVenue: $weddingVenue, ')
          ..write('groomName: $groomName, ')
          ..write('brideName: $brideName, ')
          ..write('qrCodeData: $qrCodeData, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CardFieldsDynamicTable extends CardFieldsDynamic
    with TableInfo<$CardFieldsDynamicTable, CardFieldsDynamicData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardFieldsDynamicTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
    'card_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cards (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _fieldKeyMeta = const VerificationMeta(
    'fieldKey',
  );
  @override
  late final GeneratedColumn<String> fieldKey = GeneratedColumn<String>(
    'field_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldValueMeta = const VerificationMeta(
    'fieldValue',
  );
  @override
  late final GeneratedColumn<String> fieldValue = GeneratedColumn<String>(
    'field_value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _confidenceMeta = const VerificationMeta(
    'confidence',
  );
  @override
  late final GeneratedColumn<double> confidence = GeneratedColumn<double>(
    'confidence',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isUserLabelledMeta = const VerificationMeta(
    'isUserLabelled',
  );
  @override
  late final GeneratedColumn<bool> isUserLabelled = GeneratedColumn<bool>(
    'is_user_labelled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_user_labelled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardId,
    fieldKey,
    fieldValue,
    confidence,
    source,
    isUserLabelled,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'card_fields_dynamic';
  @override
  VerificationContext validateIntegrity(
    Insertable<CardFieldsDynamicData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_id')) {
      context.handle(
        _cardIdMeta,
        cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta),
      );
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('field_key')) {
      context.handle(
        _fieldKeyMeta,
        fieldKey.isAcceptableOrUnknown(data['field_key']!, _fieldKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldKeyMeta);
    }
    if (data.containsKey('field_value')) {
      context.handle(
        _fieldValueMeta,
        fieldValue.isAcceptableOrUnknown(data['field_value']!, _fieldValueMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldValueMeta);
    }
    if (data.containsKey('confidence')) {
      context.handle(
        _confidenceMeta,
        confidence.isAcceptableOrUnknown(data['confidence']!, _confidenceMeta),
      );
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('is_user_labelled')) {
      context.handle(
        _isUserLabelledMeta,
        isUserLabelled.isAcceptableOrUnknown(
          data['is_user_labelled']!,
          _isUserLabelledMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardFieldsDynamicData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CardFieldsDynamicData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cardId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_id'],
      )!,
      fieldKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_key'],
      )!,
      fieldValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_value'],
      )!,
      confidence: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}confidence'],
      ),
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      ),
      isUserLabelled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_user_labelled'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CardFieldsDynamicTable createAlias(String alias) {
    return $CardFieldsDynamicTable(attachedDatabase, alias);
  }
}

class CardFieldsDynamicData extends DataClass
    implements Insertable<CardFieldsDynamicData> {
  final String id;
  final String cardId;
  final String fieldKey;
  final String fieldValue;
  final double? confidence;
  final String? source;
  final bool isUserLabelled;
  final int createdAt;
  const CardFieldsDynamicData({
    required this.id,
    required this.cardId,
    required this.fieldKey,
    required this.fieldValue,
    this.confidence,
    this.source,
    required this.isUserLabelled,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['card_id'] = Variable<String>(cardId);
    map['field_key'] = Variable<String>(fieldKey);
    map['field_value'] = Variable<String>(fieldValue);
    if (!nullToAbsent || confidence != null) {
      map['confidence'] = Variable<double>(confidence);
    }
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<String>(source);
    }
    map['is_user_labelled'] = Variable<bool>(isUserLabelled);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  CardFieldsDynamicCompanion toCompanion(bool nullToAbsent) {
    return CardFieldsDynamicCompanion(
      id: Value(id),
      cardId: Value(cardId),
      fieldKey: Value(fieldKey),
      fieldValue: Value(fieldValue),
      confidence: confidence == null && nullToAbsent
          ? const Value.absent()
          : Value(confidence),
      source: source == null && nullToAbsent
          ? const Value.absent()
          : Value(source),
      isUserLabelled: Value(isUserLabelled),
      createdAt: Value(createdAt),
    );
  }

  factory CardFieldsDynamicData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardFieldsDynamicData(
      id: serializer.fromJson<String>(json['id']),
      cardId: serializer.fromJson<String>(json['cardId']),
      fieldKey: serializer.fromJson<String>(json['fieldKey']),
      fieldValue: serializer.fromJson<String>(json['fieldValue']),
      confidence: serializer.fromJson<double?>(json['confidence']),
      source: serializer.fromJson<String?>(json['source']),
      isUserLabelled: serializer.fromJson<bool>(json['isUserLabelled']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardId': serializer.toJson<String>(cardId),
      'fieldKey': serializer.toJson<String>(fieldKey),
      'fieldValue': serializer.toJson<String>(fieldValue),
      'confidence': serializer.toJson<double?>(confidence),
      'source': serializer.toJson<String?>(source),
      'isUserLabelled': serializer.toJson<bool>(isUserLabelled),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  CardFieldsDynamicData copyWith({
    String? id,
    String? cardId,
    String? fieldKey,
    String? fieldValue,
    Value<double?> confidence = const Value.absent(),
    Value<String?> source = const Value.absent(),
    bool? isUserLabelled,
    int? createdAt,
  }) => CardFieldsDynamicData(
    id: id ?? this.id,
    cardId: cardId ?? this.cardId,
    fieldKey: fieldKey ?? this.fieldKey,
    fieldValue: fieldValue ?? this.fieldValue,
    confidence: confidence.present ? confidence.value : this.confidence,
    source: source.present ? source.value : this.source,
    isUserLabelled: isUserLabelled ?? this.isUserLabelled,
    createdAt: createdAt ?? this.createdAt,
  );
  CardFieldsDynamicData copyWithCompanion(CardFieldsDynamicCompanion data) {
    return CardFieldsDynamicData(
      id: data.id.present ? data.id.value : this.id,
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      fieldKey: data.fieldKey.present ? data.fieldKey.value : this.fieldKey,
      fieldValue: data.fieldValue.present
          ? data.fieldValue.value
          : this.fieldValue,
      confidence: data.confidence.present
          ? data.confidence.value
          : this.confidence,
      source: data.source.present ? data.source.value : this.source,
      isUserLabelled: data.isUserLabelled.present
          ? data.isUserLabelled.value
          : this.isUserLabelled,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CardFieldsDynamicData(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('fieldKey: $fieldKey, ')
          ..write('fieldValue: $fieldValue, ')
          ..write('confidence: $confidence, ')
          ..write('source: $source, ')
          ..write('isUserLabelled: $isUserLabelled, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    cardId,
    fieldKey,
    fieldValue,
    confidence,
    source,
    isUserLabelled,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardFieldsDynamicData &&
          other.id == this.id &&
          other.cardId == this.cardId &&
          other.fieldKey == this.fieldKey &&
          other.fieldValue == this.fieldValue &&
          other.confidence == this.confidence &&
          other.source == this.source &&
          other.isUserLabelled == this.isUserLabelled &&
          other.createdAt == this.createdAt);
}

class CardFieldsDynamicCompanion
    extends UpdateCompanion<CardFieldsDynamicData> {
  final Value<String> id;
  final Value<String> cardId;
  final Value<String> fieldKey;
  final Value<String> fieldValue;
  final Value<double?> confidence;
  final Value<String?> source;
  final Value<bool> isUserLabelled;
  final Value<int> createdAt;
  final Value<int> rowid;
  const CardFieldsDynamicCompanion({
    this.id = const Value.absent(),
    this.cardId = const Value.absent(),
    this.fieldKey = const Value.absent(),
    this.fieldValue = const Value.absent(),
    this.confidence = const Value.absent(),
    this.source = const Value.absent(),
    this.isUserLabelled = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CardFieldsDynamicCompanion.insert({
    required String id,
    required String cardId,
    required String fieldKey,
    required String fieldValue,
    this.confidence = const Value.absent(),
    this.source = const Value.absent(),
    this.isUserLabelled = const Value.absent(),
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cardId = Value(cardId),
       fieldKey = Value(fieldKey),
       fieldValue = Value(fieldValue),
       createdAt = Value(createdAt);
  static Insertable<CardFieldsDynamicData> custom({
    Expression<String>? id,
    Expression<String>? cardId,
    Expression<String>? fieldKey,
    Expression<String>? fieldValue,
    Expression<double>? confidence,
    Expression<String>? source,
    Expression<bool>? isUserLabelled,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardId != null) 'card_id': cardId,
      if (fieldKey != null) 'field_key': fieldKey,
      if (fieldValue != null) 'field_value': fieldValue,
      if (confidence != null) 'confidence': confidence,
      if (source != null) 'source': source,
      if (isUserLabelled != null) 'is_user_labelled': isUserLabelled,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CardFieldsDynamicCompanion copyWith({
    Value<String>? id,
    Value<String>? cardId,
    Value<String>? fieldKey,
    Value<String>? fieldValue,
    Value<double?>? confidence,
    Value<String?>? source,
    Value<bool>? isUserLabelled,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return CardFieldsDynamicCompanion(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      fieldKey: fieldKey ?? this.fieldKey,
      fieldValue: fieldValue ?? this.fieldValue,
      confidence: confidence ?? this.confidence,
      source: source ?? this.source,
      isUserLabelled: isUserLabelled ?? this.isUserLabelled,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (fieldKey.present) {
      map['field_key'] = Variable<String>(fieldKey.value);
    }
    if (fieldValue.present) {
      map['field_value'] = Variable<String>(fieldValue.value);
    }
    if (confidence.present) {
      map['confidence'] = Variable<double>(confidence.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (isUserLabelled.present) {
      map['is_user_labelled'] = Variable<bool>(isUserLabelled.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardFieldsDynamicCompanion(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('fieldKey: $fieldKey, ')
          ..write('fieldValue: $fieldValue, ')
          ..write('confidence: $confidence, ')
          ..write('source: $source, ')
          ..write('isUserLabelled: $isUserLabelled, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FieldDefinitionsTable extends FieldDefinitions
    with TableInfo<$FieldDefinitionsTable, FieldDefinition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FieldDefinitionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldKeyMeta = const VerificationMeta(
    'fieldKey',
  );
  @override
  late final GeneratedColumn<String> fieldKey = GeneratedColumn<String>(
    'field_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _occurrenceCountMeta = const VerificationMeta(
    'occurrenceCount',
  );
  @override
  late final GeneratedColumn<int> occurrenceCount = GeneratedColumn<int>(
    'occurrence_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _promotedToCoreMeta = const VerificationMeta(
    'promotedToCore',
  );
  @override
  late final GeneratedColumn<bool> promotedToCore = GeneratedColumn<bool>(
    'promoted_to_core',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("promoted_to_core" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _firstSeenMeta = const VerificationMeta(
    'firstSeen',
  );
  @override
  late final GeneratedColumn<int> firstSeen = GeneratedColumn<int>(
    'first_seen',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastSeenMeta = const VerificationMeta(
    'lastSeen',
  );
  @override
  late final GeneratedColumn<int> lastSeen = GeneratedColumn<int>(
    'last_seen',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    fieldKey,
    displayName,
    occurrenceCount,
    promotedToCore,
    firstSeen,
    lastSeen,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'field_definitions';
  @override
  VerificationContext validateIntegrity(
    Insertable<FieldDefinition> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('field_key')) {
      context.handle(
        _fieldKeyMeta,
        fieldKey.isAcceptableOrUnknown(data['field_key']!, _fieldKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldKeyMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    }
    if (data.containsKey('occurrence_count')) {
      context.handle(
        _occurrenceCountMeta,
        occurrenceCount.isAcceptableOrUnknown(
          data['occurrence_count']!,
          _occurrenceCountMeta,
        ),
      );
    }
    if (data.containsKey('promoted_to_core')) {
      context.handle(
        _promotedToCoreMeta,
        promotedToCore.isAcceptableOrUnknown(
          data['promoted_to_core']!,
          _promotedToCoreMeta,
        ),
      );
    }
    if (data.containsKey('first_seen')) {
      context.handle(
        _firstSeenMeta,
        firstSeen.isAcceptableOrUnknown(data['first_seen']!, _firstSeenMeta),
      );
    }
    if (data.containsKey('last_seen')) {
      context.handle(
        _lastSeenMeta,
        lastSeen.isAcceptableOrUnknown(data['last_seen']!, _lastSeenMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FieldDefinition map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FieldDefinition(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      fieldKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_key'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      ),
      occurrenceCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}occurrence_count'],
      )!,
      promotedToCore: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}promoted_to_core'],
      )!,
      firstSeen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}first_seen'],
      ),
      lastSeen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_seen'],
      ),
    );
  }

  @override
  $FieldDefinitionsTable createAlias(String alias) {
    return $FieldDefinitionsTable(attachedDatabase, alias);
  }
}

class FieldDefinition extends DataClass implements Insertable<FieldDefinition> {
  final String id;
  final String fieldKey;
  final String? displayName;
  final int occurrenceCount;
  final bool promotedToCore;
  final int? firstSeen;
  final int? lastSeen;
  const FieldDefinition({
    required this.id,
    required this.fieldKey,
    this.displayName,
    required this.occurrenceCount,
    required this.promotedToCore,
    this.firstSeen,
    this.lastSeen,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['field_key'] = Variable<String>(fieldKey);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    map['occurrence_count'] = Variable<int>(occurrenceCount);
    map['promoted_to_core'] = Variable<bool>(promotedToCore);
    if (!nullToAbsent || firstSeen != null) {
      map['first_seen'] = Variable<int>(firstSeen);
    }
    if (!nullToAbsent || lastSeen != null) {
      map['last_seen'] = Variable<int>(lastSeen);
    }
    return map;
  }

  FieldDefinitionsCompanion toCompanion(bool nullToAbsent) {
    return FieldDefinitionsCompanion(
      id: Value(id),
      fieldKey: Value(fieldKey),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      occurrenceCount: Value(occurrenceCount),
      promotedToCore: Value(promotedToCore),
      firstSeen: firstSeen == null && nullToAbsent
          ? const Value.absent()
          : Value(firstSeen),
      lastSeen: lastSeen == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSeen),
    );
  }

  factory FieldDefinition.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FieldDefinition(
      id: serializer.fromJson<String>(json['id']),
      fieldKey: serializer.fromJson<String>(json['fieldKey']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      occurrenceCount: serializer.fromJson<int>(json['occurrenceCount']),
      promotedToCore: serializer.fromJson<bool>(json['promotedToCore']),
      firstSeen: serializer.fromJson<int?>(json['firstSeen']),
      lastSeen: serializer.fromJson<int?>(json['lastSeen']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fieldKey': serializer.toJson<String>(fieldKey),
      'displayName': serializer.toJson<String?>(displayName),
      'occurrenceCount': serializer.toJson<int>(occurrenceCount),
      'promotedToCore': serializer.toJson<bool>(promotedToCore),
      'firstSeen': serializer.toJson<int?>(firstSeen),
      'lastSeen': serializer.toJson<int?>(lastSeen),
    };
  }

  FieldDefinition copyWith({
    String? id,
    String? fieldKey,
    Value<String?> displayName = const Value.absent(),
    int? occurrenceCount,
    bool? promotedToCore,
    Value<int?> firstSeen = const Value.absent(),
    Value<int?> lastSeen = const Value.absent(),
  }) => FieldDefinition(
    id: id ?? this.id,
    fieldKey: fieldKey ?? this.fieldKey,
    displayName: displayName.present ? displayName.value : this.displayName,
    occurrenceCount: occurrenceCount ?? this.occurrenceCount,
    promotedToCore: promotedToCore ?? this.promotedToCore,
    firstSeen: firstSeen.present ? firstSeen.value : this.firstSeen,
    lastSeen: lastSeen.present ? lastSeen.value : this.lastSeen,
  );
  FieldDefinition copyWithCompanion(FieldDefinitionsCompanion data) {
    return FieldDefinition(
      id: data.id.present ? data.id.value : this.id,
      fieldKey: data.fieldKey.present ? data.fieldKey.value : this.fieldKey,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      occurrenceCount: data.occurrenceCount.present
          ? data.occurrenceCount.value
          : this.occurrenceCount,
      promotedToCore: data.promotedToCore.present
          ? data.promotedToCore.value
          : this.promotedToCore,
      firstSeen: data.firstSeen.present ? data.firstSeen.value : this.firstSeen,
      lastSeen: data.lastSeen.present ? data.lastSeen.value : this.lastSeen,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FieldDefinition(')
          ..write('id: $id, ')
          ..write('fieldKey: $fieldKey, ')
          ..write('displayName: $displayName, ')
          ..write('occurrenceCount: $occurrenceCount, ')
          ..write('promotedToCore: $promotedToCore, ')
          ..write('firstSeen: $firstSeen, ')
          ..write('lastSeen: $lastSeen')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    fieldKey,
    displayName,
    occurrenceCount,
    promotedToCore,
    firstSeen,
    lastSeen,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FieldDefinition &&
          other.id == this.id &&
          other.fieldKey == this.fieldKey &&
          other.displayName == this.displayName &&
          other.occurrenceCount == this.occurrenceCount &&
          other.promotedToCore == this.promotedToCore &&
          other.firstSeen == this.firstSeen &&
          other.lastSeen == this.lastSeen);
}

class FieldDefinitionsCompanion extends UpdateCompanion<FieldDefinition> {
  final Value<String> id;
  final Value<String> fieldKey;
  final Value<String?> displayName;
  final Value<int> occurrenceCount;
  final Value<bool> promotedToCore;
  final Value<int?> firstSeen;
  final Value<int?> lastSeen;
  final Value<int> rowid;
  const FieldDefinitionsCompanion({
    this.id = const Value.absent(),
    this.fieldKey = const Value.absent(),
    this.displayName = const Value.absent(),
    this.occurrenceCount = const Value.absent(),
    this.promotedToCore = const Value.absent(),
    this.firstSeen = const Value.absent(),
    this.lastSeen = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FieldDefinitionsCompanion.insert({
    required String id,
    required String fieldKey,
    this.displayName = const Value.absent(),
    this.occurrenceCount = const Value.absent(),
    this.promotedToCore = const Value.absent(),
    this.firstSeen = const Value.absent(),
    this.lastSeen = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       fieldKey = Value(fieldKey);
  static Insertable<FieldDefinition> custom({
    Expression<String>? id,
    Expression<String>? fieldKey,
    Expression<String>? displayName,
    Expression<int>? occurrenceCount,
    Expression<bool>? promotedToCore,
    Expression<int>? firstSeen,
    Expression<int>? lastSeen,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fieldKey != null) 'field_key': fieldKey,
      if (displayName != null) 'display_name': displayName,
      if (occurrenceCount != null) 'occurrence_count': occurrenceCount,
      if (promotedToCore != null) 'promoted_to_core': promotedToCore,
      if (firstSeen != null) 'first_seen': firstSeen,
      if (lastSeen != null) 'last_seen': lastSeen,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FieldDefinitionsCompanion copyWith({
    Value<String>? id,
    Value<String>? fieldKey,
    Value<String?>? displayName,
    Value<int>? occurrenceCount,
    Value<bool>? promotedToCore,
    Value<int?>? firstSeen,
    Value<int?>? lastSeen,
    Value<int>? rowid,
  }) {
    return FieldDefinitionsCompanion(
      id: id ?? this.id,
      fieldKey: fieldKey ?? this.fieldKey,
      displayName: displayName ?? this.displayName,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      promotedToCore: promotedToCore ?? this.promotedToCore,
      firstSeen: firstSeen ?? this.firstSeen,
      lastSeen: lastSeen ?? this.lastSeen,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fieldKey.present) {
      map['field_key'] = Variable<String>(fieldKey.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (occurrenceCount.present) {
      map['occurrence_count'] = Variable<int>(occurrenceCount.value);
    }
    if (promotedToCore.present) {
      map['promoted_to_core'] = Variable<bool>(promotedToCore.value);
    }
    if (firstSeen.present) {
      map['first_seen'] = Variable<int>(firstSeen.value);
    }
    if (lastSeen.present) {
      map['last_seen'] = Variable<int>(lastSeen.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FieldDefinitionsCompanion(')
          ..write('id: $id, ')
          ..write('fieldKey: $fieldKey, ')
          ..write('displayName: $displayName, ')
          ..write('occurrenceCount: $occurrenceCount, ')
          ..write('promotedToCore: $promotedToCore, ')
          ..write('firstSeen: $firstSeen, ')
          ..write('lastSeen: $lastSeen, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ScanLogsTable extends ScanLogs with TableInfo<$ScanLogsTable, ScanLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScanLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
    'card_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cards (id)',
    ),
  );
  static const VerificationMeta _ocrEngineMeta = const VerificationMeta(
    'ocrEngine',
  );
  @override
  late final GeneratedColumn<String> ocrEngine = GeneratedColumn<String>(
    'ocr_engine',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preprocessingDurationMsMeta =
      const VerificationMeta('preprocessingDurationMs');
  @override
  late final GeneratedColumn<int> preprocessingDurationMs =
      GeneratedColumn<int>(
        'preprocessing_duration_ms',
        aliasedName,
        true,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _ocrDurationMsMeta = const VerificationMeta(
    'ocrDurationMs',
  );
  @override
  late final GeneratedColumn<int> ocrDurationMs = GeneratedColumn<int>(
    'ocr_duration_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _extractionDurationMsMeta =
      const VerificationMeta('extractionDurationMs');
  @override
  late final GeneratedColumn<int> extractionDurationMs = GeneratedColumn<int>(
    'extraction_duration_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _totalDurationMsMeta = const VerificationMeta(
    'totalDurationMs',
  );
  @override
  late final GeneratedColumn<int> totalDurationMs = GeneratedColumn<int>(
    'total_duration_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _errorMessageMeta = const VerificationMeta(
    'errorMessage',
  );
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
    'error_message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardId,
    ocrEngine,
    preprocessingDurationMs,
    ocrDurationMs,
    extractionDurationMs,
    totalDurationMs,
    errorMessage,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scan_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<ScanLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_id')) {
      context.handle(
        _cardIdMeta,
        cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta),
      );
    }
    if (data.containsKey('ocr_engine')) {
      context.handle(
        _ocrEngineMeta,
        ocrEngine.isAcceptableOrUnknown(data['ocr_engine']!, _ocrEngineMeta),
      );
    }
    if (data.containsKey('preprocessing_duration_ms')) {
      context.handle(
        _preprocessingDurationMsMeta,
        preprocessingDurationMs.isAcceptableOrUnknown(
          data['preprocessing_duration_ms']!,
          _preprocessingDurationMsMeta,
        ),
      );
    }
    if (data.containsKey('ocr_duration_ms')) {
      context.handle(
        _ocrDurationMsMeta,
        ocrDurationMs.isAcceptableOrUnknown(
          data['ocr_duration_ms']!,
          _ocrDurationMsMeta,
        ),
      );
    }
    if (data.containsKey('extraction_duration_ms')) {
      context.handle(
        _extractionDurationMsMeta,
        extractionDurationMs.isAcceptableOrUnknown(
          data['extraction_duration_ms']!,
          _extractionDurationMsMeta,
        ),
      );
    }
    if (data.containsKey('total_duration_ms')) {
      context.handle(
        _totalDurationMsMeta,
        totalDurationMs.isAcceptableOrUnknown(
          data['total_duration_ms']!,
          _totalDurationMsMeta,
        ),
      );
    }
    if (data.containsKey('error_message')) {
      context.handle(
        _errorMessageMeta,
        errorMessage.isAcceptableOrUnknown(
          data['error_message']!,
          _errorMessageMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ScanLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ScanLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cardId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_id'],
      ),
      ocrEngine: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ocr_engine'],
      ),
      preprocessingDurationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}preprocessing_duration_ms'],
      ),
      ocrDurationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ocr_duration_ms'],
      ),
      extractionDurationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}extraction_duration_ms'],
      ),
      totalDurationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_duration_ms'],
      ),
      errorMessage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}error_message'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $ScanLogsTable createAlias(String alias) {
    return $ScanLogsTable(attachedDatabase, alias);
  }
}

class ScanLog extends DataClass implements Insertable<ScanLog> {
  final String id;
  final String? cardId;
  final String? ocrEngine;
  final int? preprocessingDurationMs;
  final int? ocrDurationMs;
  final int? extractionDurationMs;
  final int? totalDurationMs;
  final String? errorMessage;
  final int createdAt;
  const ScanLog({
    required this.id,
    this.cardId,
    this.ocrEngine,
    this.preprocessingDurationMs,
    this.ocrDurationMs,
    this.extractionDurationMs,
    this.totalDurationMs,
    this.errorMessage,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || cardId != null) {
      map['card_id'] = Variable<String>(cardId);
    }
    if (!nullToAbsent || ocrEngine != null) {
      map['ocr_engine'] = Variable<String>(ocrEngine);
    }
    if (!nullToAbsent || preprocessingDurationMs != null) {
      map['preprocessing_duration_ms'] = Variable<int>(preprocessingDurationMs);
    }
    if (!nullToAbsent || ocrDurationMs != null) {
      map['ocr_duration_ms'] = Variable<int>(ocrDurationMs);
    }
    if (!nullToAbsent || extractionDurationMs != null) {
      map['extraction_duration_ms'] = Variable<int>(extractionDurationMs);
    }
    if (!nullToAbsent || totalDurationMs != null) {
      map['total_duration_ms'] = Variable<int>(totalDurationMs);
    }
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  ScanLogsCompanion toCompanion(bool nullToAbsent) {
    return ScanLogsCompanion(
      id: Value(id),
      cardId: cardId == null && nullToAbsent
          ? const Value.absent()
          : Value(cardId),
      ocrEngine: ocrEngine == null && nullToAbsent
          ? const Value.absent()
          : Value(ocrEngine),
      preprocessingDurationMs: preprocessingDurationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(preprocessingDurationMs),
      ocrDurationMs: ocrDurationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(ocrDurationMs),
      extractionDurationMs: extractionDurationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(extractionDurationMs),
      totalDurationMs: totalDurationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(totalDurationMs),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
      createdAt: Value(createdAt),
    );
  }

  factory ScanLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScanLog(
      id: serializer.fromJson<String>(json['id']),
      cardId: serializer.fromJson<String?>(json['cardId']),
      ocrEngine: serializer.fromJson<String?>(json['ocrEngine']),
      preprocessingDurationMs: serializer.fromJson<int?>(
        json['preprocessingDurationMs'],
      ),
      ocrDurationMs: serializer.fromJson<int?>(json['ocrDurationMs']),
      extractionDurationMs: serializer.fromJson<int?>(
        json['extractionDurationMs'],
      ),
      totalDurationMs: serializer.fromJson<int?>(json['totalDurationMs']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardId': serializer.toJson<String?>(cardId),
      'ocrEngine': serializer.toJson<String?>(ocrEngine),
      'preprocessingDurationMs': serializer.toJson<int?>(
        preprocessingDurationMs,
      ),
      'ocrDurationMs': serializer.toJson<int?>(ocrDurationMs),
      'extractionDurationMs': serializer.toJson<int?>(extractionDurationMs),
      'totalDurationMs': serializer.toJson<int?>(totalDurationMs),
      'errorMessage': serializer.toJson<String?>(errorMessage),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  ScanLog copyWith({
    String? id,
    Value<String?> cardId = const Value.absent(),
    Value<String?> ocrEngine = const Value.absent(),
    Value<int?> preprocessingDurationMs = const Value.absent(),
    Value<int?> ocrDurationMs = const Value.absent(),
    Value<int?> extractionDurationMs = const Value.absent(),
    Value<int?> totalDurationMs = const Value.absent(),
    Value<String?> errorMessage = const Value.absent(),
    int? createdAt,
  }) => ScanLog(
    id: id ?? this.id,
    cardId: cardId.present ? cardId.value : this.cardId,
    ocrEngine: ocrEngine.present ? ocrEngine.value : this.ocrEngine,
    preprocessingDurationMs: preprocessingDurationMs.present
        ? preprocessingDurationMs.value
        : this.preprocessingDurationMs,
    ocrDurationMs: ocrDurationMs.present
        ? ocrDurationMs.value
        : this.ocrDurationMs,
    extractionDurationMs: extractionDurationMs.present
        ? extractionDurationMs.value
        : this.extractionDurationMs,
    totalDurationMs: totalDurationMs.present
        ? totalDurationMs.value
        : this.totalDurationMs,
    errorMessage: errorMessage.present ? errorMessage.value : this.errorMessage,
    createdAt: createdAt ?? this.createdAt,
  );
  ScanLog copyWithCompanion(ScanLogsCompanion data) {
    return ScanLog(
      id: data.id.present ? data.id.value : this.id,
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      ocrEngine: data.ocrEngine.present ? data.ocrEngine.value : this.ocrEngine,
      preprocessingDurationMs: data.preprocessingDurationMs.present
          ? data.preprocessingDurationMs.value
          : this.preprocessingDurationMs,
      ocrDurationMs: data.ocrDurationMs.present
          ? data.ocrDurationMs.value
          : this.ocrDurationMs,
      extractionDurationMs: data.extractionDurationMs.present
          ? data.extractionDurationMs.value
          : this.extractionDurationMs,
      totalDurationMs: data.totalDurationMs.present
          ? data.totalDurationMs.value
          : this.totalDurationMs,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ScanLog(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('ocrEngine: $ocrEngine, ')
          ..write('preprocessingDurationMs: $preprocessingDurationMs, ')
          ..write('ocrDurationMs: $ocrDurationMs, ')
          ..write('extractionDurationMs: $extractionDurationMs, ')
          ..write('totalDurationMs: $totalDurationMs, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    cardId,
    ocrEngine,
    preprocessingDurationMs,
    ocrDurationMs,
    extractionDurationMs,
    totalDurationMs,
    errorMessage,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScanLog &&
          other.id == this.id &&
          other.cardId == this.cardId &&
          other.ocrEngine == this.ocrEngine &&
          other.preprocessingDurationMs == this.preprocessingDurationMs &&
          other.ocrDurationMs == this.ocrDurationMs &&
          other.extractionDurationMs == this.extractionDurationMs &&
          other.totalDurationMs == this.totalDurationMs &&
          other.errorMessage == this.errorMessage &&
          other.createdAt == this.createdAt);
}

class ScanLogsCompanion extends UpdateCompanion<ScanLog> {
  final Value<String> id;
  final Value<String?> cardId;
  final Value<String?> ocrEngine;
  final Value<int?> preprocessingDurationMs;
  final Value<int?> ocrDurationMs;
  final Value<int?> extractionDurationMs;
  final Value<int?> totalDurationMs;
  final Value<String?> errorMessage;
  final Value<int> createdAt;
  final Value<int> rowid;
  const ScanLogsCompanion({
    this.id = const Value.absent(),
    this.cardId = const Value.absent(),
    this.ocrEngine = const Value.absent(),
    this.preprocessingDurationMs = const Value.absent(),
    this.ocrDurationMs = const Value.absent(),
    this.extractionDurationMs = const Value.absent(),
    this.totalDurationMs = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ScanLogsCompanion.insert({
    required String id,
    this.cardId = const Value.absent(),
    this.ocrEngine = const Value.absent(),
    this.preprocessingDurationMs = const Value.absent(),
    this.ocrDurationMs = const Value.absent(),
    this.extractionDurationMs = const Value.absent(),
    this.totalDurationMs = const Value.absent(),
    this.errorMessage = const Value.absent(),
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       createdAt = Value(createdAt);
  static Insertable<ScanLog> custom({
    Expression<String>? id,
    Expression<String>? cardId,
    Expression<String>? ocrEngine,
    Expression<int>? preprocessingDurationMs,
    Expression<int>? ocrDurationMs,
    Expression<int>? extractionDurationMs,
    Expression<int>? totalDurationMs,
    Expression<String>? errorMessage,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardId != null) 'card_id': cardId,
      if (ocrEngine != null) 'ocr_engine': ocrEngine,
      if (preprocessingDurationMs != null)
        'preprocessing_duration_ms': preprocessingDurationMs,
      if (ocrDurationMs != null) 'ocr_duration_ms': ocrDurationMs,
      if (extractionDurationMs != null)
        'extraction_duration_ms': extractionDurationMs,
      if (totalDurationMs != null) 'total_duration_ms': totalDurationMs,
      if (errorMessage != null) 'error_message': errorMessage,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ScanLogsCompanion copyWith({
    Value<String>? id,
    Value<String?>? cardId,
    Value<String?>? ocrEngine,
    Value<int?>? preprocessingDurationMs,
    Value<int?>? ocrDurationMs,
    Value<int?>? extractionDurationMs,
    Value<int?>? totalDurationMs,
    Value<String?>? errorMessage,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return ScanLogsCompanion(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      ocrEngine: ocrEngine ?? this.ocrEngine,
      preprocessingDurationMs:
          preprocessingDurationMs ?? this.preprocessingDurationMs,
      ocrDurationMs: ocrDurationMs ?? this.ocrDurationMs,
      extractionDurationMs: extractionDurationMs ?? this.extractionDurationMs,
      totalDurationMs: totalDurationMs ?? this.totalDurationMs,
      errorMessage: errorMessage ?? this.errorMessage,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (ocrEngine.present) {
      map['ocr_engine'] = Variable<String>(ocrEngine.value);
    }
    if (preprocessingDurationMs.present) {
      map['preprocessing_duration_ms'] = Variable<int>(
        preprocessingDurationMs.value,
      );
    }
    if (ocrDurationMs.present) {
      map['ocr_duration_ms'] = Variable<int>(ocrDurationMs.value);
    }
    if (extractionDurationMs.present) {
      map['extraction_duration_ms'] = Variable<int>(extractionDurationMs.value);
    }
    if (totalDurationMs.present) {
      map['total_duration_ms'] = Variable<int>(totalDurationMs.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScanLogsCompanion(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('ocrEngine: $ocrEngine, ')
          ..write('preprocessingDurationMs: $preprocessingDurationMs, ')
          ..write('ocrDurationMs: $ocrDurationMs, ')
          ..write('extractionDurationMs: $extractionDurationMs, ')
          ..write('totalDurationMs: $totalDurationMs, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CardsTable cards = $CardsTable(this);
  late final $CardFieldsCoreTable cardFieldsCore = $CardFieldsCoreTable(this);
  late final $CardFieldsDynamicTable cardFieldsDynamic =
      $CardFieldsDynamicTable(this);
  late final $FieldDefinitionsTable fieldDefinitions = $FieldDefinitionsTable(
    this,
  );
  late final $ScanLogsTable scanLogs = $ScanLogsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cards,
    cardFieldsCore,
    cardFieldsDynamic,
    fieldDefinitions,
    scanLogs,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'cards',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('card_fields_core', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'cards',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('card_fields_dynamic', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$CardsTableCreateCompanionBuilder =
    CardsCompanion Function({
      required String id,
      required String cardType,
      required int scanDate,
      Value<String?> frontImage,
      Value<String?> backImage,
      Value<String?> rawTextFront,
      Value<String?> rawTextBack,
      Value<double?> overallConfidence,
      Value<bool> isFavourite,
      Value<String?> tags,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$CardsTableUpdateCompanionBuilder =
    CardsCompanion Function({
      Value<String> id,
      Value<String> cardType,
      Value<int> scanDate,
      Value<String?> frontImage,
      Value<String?> backImage,
      Value<String?> rawTextFront,
      Value<String?> rawTextBack,
      Value<double?> overallConfidence,
      Value<bool> isFavourite,
      Value<String?> tags,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$CardsTableReferences
    extends BaseReferences<_$AppDatabase, $CardsTable, Card> {
  $$CardsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CardFieldsCoreTable, List<CardFieldsCoreData>>
  _cardFieldsCoreRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.cardFieldsCore,
    aliasName: 'cards__id__card_fields_core__card_id',
  );

  $$CardFieldsCoreTableProcessedTableManager get cardFieldsCoreRefs {
    final manager = $$CardFieldsCoreTableTableManager(
      $_db,
      $_db.cardFieldsCore,
    ).filter((f) => f.cardId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_cardFieldsCoreRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $CardFieldsDynamicTable,
    List<CardFieldsDynamicData>
  >
  _cardFieldsDynamicRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.cardFieldsDynamic,
        aliasName: 'cards__id__card_fields_dynamic__card_id',
      );

  $$CardFieldsDynamicTableProcessedTableManager get cardFieldsDynamicRefs {
    final manager = $$CardFieldsDynamicTableTableManager(
      $_db,
      $_db.cardFieldsDynamic,
    ).filter((f) => f.cardId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _cardFieldsDynamicRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ScanLogsTable, List<ScanLog>> _scanLogsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.scanLogs,
    aliasName: 'cards__id__scan_logs__card_id',
  );

  $$ScanLogsTableProcessedTableManager get scanLogsRefs {
    final manager = $$ScanLogsTableTableManager(
      $_db,
      $_db.scanLogs,
    ).filter((f) => f.cardId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_scanLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CardsTableFilterComposer extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardType => $composableBuilder(
    column: $table.cardType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scanDate => $composableBuilder(
    column: $table.scanDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get frontImage => $composableBuilder(
    column: $table.frontImage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get backImage => $composableBuilder(
    column: $table.backImage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawTextFront => $composableBuilder(
    column: $table.rawTextFront,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawTextBack => $composableBuilder(
    column: $table.rawTextBack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get overallConfidence => $composableBuilder(
    column: $table.overallConfidence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> cardFieldsCoreRefs(
    Expression<bool> Function($$CardFieldsCoreTableFilterComposer f) f,
  ) {
    final $$CardFieldsCoreTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cardFieldsCore,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardFieldsCoreTableFilterComposer(
            $db: $db,
            $table: $db.cardFieldsCore,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> cardFieldsDynamicRefs(
    Expression<bool> Function($$CardFieldsDynamicTableFilterComposer f) f,
  ) {
    final $$CardFieldsDynamicTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cardFieldsDynamic,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardFieldsDynamicTableFilterComposer(
            $db: $db,
            $table: $db.cardFieldsDynamic,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> scanLogsRefs(
    Expression<bool> Function($$ScanLogsTableFilterComposer f) f,
  ) {
    final $$ScanLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.scanLogs,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScanLogsTableFilterComposer(
            $db: $db,
            $table: $db.scanLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CardsTableOrderingComposer
    extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardType => $composableBuilder(
    column: $table.cardType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scanDate => $composableBuilder(
    column: $table.scanDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get frontImage => $composableBuilder(
    column: $table.frontImage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get backImage => $composableBuilder(
    column: $table.backImage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawTextFront => $composableBuilder(
    column: $table.rawTextFront,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawTextBack => $composableBuilder(
    column: $table.rawTextBack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get overallConfidence => $composableBuilder(
    column: $table.overallConfidence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardsTable> {
  $$CardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cardType =>
      $composableBuilder(column: $table.cardType, builder: (column) => column);

  GeneratedColumn<int> get scanDate =>
      $composableBuilder(column: $table.scanDate, builder: (column) => column);

  GeneratedColumn<String> get frontImage => $composableBuilder(
    column: $table.frontImage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get backImage =>
      $composableBuilder(column: $table.backImage, builder: (column) => column);

  GeneratedColumn<String> get rawTextFront => $composableBuilder(
    column: $table.rawTextFront,
    builder: (column) => column,
  );

  GeneratedColumn<String> get rawTextBack => $composableBuilder(
    column: $table.rawTextBack,
    builder: (column) => column,
  );

  GeneratedColumn<double> get overallConfidence => $composableBuilder(
    column: $table.overallConfidence,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFavourite => $composableBuilder(
    column: $table.isFavourite,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> cardFieldsCoreRefs<T extends Object>(
    Expression<T> Function($$CardFieldsCoreTableAnnotationComposer a) f,
  ) {
    final $$CardFieldsCoreTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cardFieldsCore,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardFieldsCoreTableAnnotationComposer(
            $db: $db,
            $table: $db.cardFieldsCore,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> cardFieldsDynamicRefs<T extends Object>(
    Expression<T> Function($$CardFieldsDynamicTableAnnotationComposer a) f,
  ) {
    final $$CardFieldsDynamicTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.cardFieldsDynamic,
          getReferencedColumn: (t) => t.cardId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CardFieldsDynamicTableAnnotationComposer(
                $db: $db,
                $table: $db.cardFieldsDynamic,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> scanLogsRefs<T extends Object>(
    Expression<T> Function($$ScanLogsTableAnnotationComposer a) f,
  ) {
    final $$ScanLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.scanLogs,
      getReferencedColumn: (t) => t.cardId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScanLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.scanLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CardsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CardsTable,
          Card,
          $$CardsTableFilterComposer,
          $$CardsTableOrderingComposer,
          $$CardsTableAnnotationComposer,
          $$CardsTableCreateCompanionBuilder,
          $$CardsTableUpdateCompanionBuilder,
          (Card, $$CardsTableReferences),
          Card,
          PrefetchHooks Function({
            bool cardFieldsCoreRefs,
            bool cardFieldsDynamicRefs,
            bool scanLogsRefs,
          })
        > {
  $$CardsTableTableManager(_$AppDatabase db, $CardsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> cardType = const Value.absent(),
                Value<int> scanDate = const Value.absent(),
                Value<String?> frontImage = const Value.absent(),
                Value<String?> backImage = const Value.absent(),
                Value<String?> rawTextFront = const Value.absent(),
                Value<String?> rawTextBack = const Value.absent(),
                Value<double?> overallConfidence = const Value.absent(),
                Value<bool> isFavourite = const Value.absent(),
                Value<String?> tags = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CardsCompanion(
                id: id,
                cardType: cardType,
                scanDate: scanDate,
                frontImage: frontImage,
                backImage: backImage,
                rawTextFront: rawTextFront,
                rawTextBack: rawTextBack,
                overallConfidence: overallConfidence,
                isFavourite: isFavourite,
                tags: tags,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String cardType,
                required int scanDate,
                Value<String?> frontImage = const Value.absent(),
                Value<String?> backImage = const Value.absent(),
                Value<String?> rawTextFront = const Value.absent(),
                Value<String?> rawTextBack = const Value.absent(),
                Value<double?> overallConfidence = const Value.absent(),
                Value<bool> isFavourite = const Value.absent(),
                Value<String?> tags = const Value.absent(),
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => CardsCompanion.insert(
                id: id,
                cardType: cardType,
                scanDate: scanDate,
                frontImage: frontImage,
                backImage: backImage,
                rawTextFront: rawTextFront,
                rawTextBack: rawTextBack,
                overallConfidence: overallConfidence,
                isFavourite: isFavourite,
                tags: tags,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$CardsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                cardFieldsCoreRefs = false,
                cardFieldsDynamicRefs = false,
                scanLogsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (cardFieldsCoreRefs) db.cardFieldsCore,
                    if (cardFieldsDynamicRefs) db.cardFieldsDynamic,
                    if (scanLogsRefs) db.scanLogs,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (cardFieldsCoreRefs)
                        await $_getPrefetchedData<
                          Card,
                          $CardsTable,
                          CardFieldsCoreData
                        >(
                          currentTable: table,
                          referencedTable: $$CardsTableReferences
                              ._cardFieldsCoreRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CardsTableReferences(
                                db,
                                table,
                                p0,
                              ).cardFieldsCoreRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.cardId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (cardFieldsDynamicRefs)
                        await $_getPrefetchedData<
                          Card,
                          $CardsTable,
                          CardFieldsDynamicData
                        >(
                          currentTable: table,
                          referencedTable: $$CardsTableReferences
                              ._cardFieldsDynamicRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CardsTableReferences(
                                db,
                                table,
                                p0,
                              ).cardFieldsDynamicRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.cardId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (scanLogsRefs)
                        await $_getPrefetchedData<Card, $CardsTable, ScanLog>(
                          currentTable: table,
                          referencedTable: $$CardsTableReferences
                              ._scanLogsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CardsTableReferences(
                                db,
                                table,
                                p0,
                              ).scanLogsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.cardId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$CardsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CardsTable,
      Card,
      $$CardsTableFilterComposer,
      $$CardsTableOrderingComposer,
      $$CardsTableAnnotationComposer,
      $$CardsTableCreateCompanionBuilder,
      $$CardsTableUpdateCompanionBuilder,
      (Card, $$CardsTableReferences),
      Card,
      PrefetchHooks Function({
        bool cardFieldsCoreRefs,
        bool cardFieldsDynamicRefs,
        bool scanLogsRefs,
      })
    >;
typedef $$CardFieldsCoreTableCreateCompanionBuilder =
    CardFieldsCoreCompanion Function({
      required String id,
      required String cardId,
      Value<String?> fullName,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> company,
      Value<String?> designation,
      Value<String?> emailPrimary,
      Value<String?> emailSecondary,
      Value<String?> phonePrimary,
      Value<String?> phoneSecondary,
      Value<String?> phoneWhatsapp,
      Value<String?> website,
      Value<String?> addressLine1,
      Value<String?> addressLine2,
      Value<String?> city,
      Value<String?> state,
      Value<String?> pincode,
      Value<String> country,
      Value<String?> aadhaarNumber,
      Value<String?> panNumber,
      Value<String?> dob,
      Value<String?> gender,
      Value<String?> linkedinUrl,
      Value<String?> twitterHandle,
      Value<String?> instagramHandle,
      Value<String?> weddingDate,
      Value<String?> weddingVenue,
      Value<String?> groomName,
      Value<String?> brideName,
      Value<String?> qrCodeData,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$CardFieldsCoreTableUpdateCompanionBuilder =
    CardFieldsCoreCompanion Function({
      Value<String> id,
      Value<String> cardId,
      Value<String?> fullName,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> company,
      Value<String?> designation,
      Value<String?> emailPrimary,
      Value<String?> emailSecondary,
      Value<String?> phonePrimary,
      Value<String?> phoneSecondary,
      Value<String?> phoneWhatsapp,
      Value<String?> website,
      Value<String?> addressLine1,
      Value<String?> addressLine2,
      Value<String?> city,
      Value<String?> state,
      Value<String?> pincode,
      Value<String> country,
      Value<String?> aadhaarNumber,
      Value<String?> panNumber,
      Value<String?> dob,
      Value<String?> gender,
      Value<String?> linkedinUrl,
      Value<String?> twitterHandle,
      Value<String?> instagramHandle,
      Value<String?> weddingDate,
      Value<String?> weddingVenue,
      Value<String?> groomName,
      Value<String?> brideName,
      Value<String?> qrCodeData,
      Value<String?> notes,
      Value<int> rowid,
    });

final class $$CardFieldsCoreTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CardFieldsCoreTable,
          CardFieldsCoreData
        > {
  $$CardFieldsCoreTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CardsTable _cardIdTable(_$AppDatabase db) =>
      db.cards.createAlias('card_fields_core__card_id__cards__id');

  $$CardsTableProcessedTableManager get cardId {
    final $_column = $_itemColumn<String>('card_id')!;

    final manager = $$CardsTableTableManager(
      $_db,
      $_db.cards,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cardIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CardFieldsCoreTableFilterComposer
    extends Composer<_$AppDatabase, $CardFieldsCoreTable> {
  $$CardFieldsCoreTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get company => $composableBuilder(
    column: $table.company,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get designation => $composableBuilder(
    column: $table.designation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get emailPrimary => $composableBuilder(
    column: $table.emailPrimary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get emailSecondary => $composableBuilder(
    column: $table.emailSecondary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phonePrimary => $composableBuilder(
    column: $table.phonePrimary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneSecondary => $composableBuilder(
    column: $table.phoneSecondary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneWhatsapp => $composableBuilder(
    column: $table.phoneWhatsapp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get website => $composableBuilder(
    column: $table.website,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressLine1 => $composableBuilder(
    column: $table.addressLine1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressLine2 => $composableBuilder(
    column: $table.addressLine2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pincode => $composableBuilder(
    column: $table.pincode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get aadhaarNumber => $composableBuilder(
    column: $table.aadhaarNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get panNumber => $composableBuilder(
    column: $table.panNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dob => $composableBuilder(
    column: $table.dob,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linkedinUrl => $composableBuilder(
    column: $table.linkedinUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get twitterHandle => $composableBuilder(
    column: $table.twitterHandle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instagramHandle => $composableBuilder(
    column: $table.instagramHandle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get weddingDate => $composableBuilder(
    column: $table.weddingDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get weddingVenue => $composableBuilder(
    column: $table.weddingVenue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get groomName => $composableBuilder(
    column: $table.groomName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brideName => $composableBuilder(
    column: $table.brideName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCodeData => $composableBuilder(
    column: $table.qrCodeData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  $$CardsTableFilterComposer get cardId {
    final $$CardsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableFilterComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsCoreTableOrderingComposer
    extends Composer<_$AppDatabase, $CardFieldsCoreTable> {
  $$CardFieldsCoreTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get company => $composableBuilder(
    column: $table.company,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get designation => $composableBuilder(
    column: $table.designation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get emailPrimary => $composableBuilder(
    column: $table.emailPrimary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get emailSecondary => $composableBuilder(
    column: $table.emailSecondary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phonePrimary => $composableBuilder(
    column: $table.phonePrimary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneSecondary => $composableBuilder(
    column: $table.phoneSecondary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneWhatsapp => $composableBuilder(
    column: $table.phoneWhatsapp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get website => $composableBuilder(
    column: $table.website,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressLine1 => $composableBuilder(
    column: $table.addressLine1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressLine2 => $composableBuilder(
    column: $table.addressLine2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pincode => $composableBuilder(
    column: $table.pincode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get aadhaarNumber => $composableBuilder(
    column: $table.aadhaarNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get panNumber => $composableBuilder(
    column: $table.panNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dob => $composableBuilder(
    column: $table.dob,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linkedinUrl => $composableBuilder(
    column: $table.linkedinUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get twitterHandle => $composableBuilder(
    column: $table.twitterHandle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instagramHandle => $composableBuilder(
    column: $table.instagramHandle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weddingDate => $composableBuilder(
    column: $table.weddingDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weddingVenue => $composableBuilder(
    column: $table.weddingVenue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get groomName => $composableBuilder(
    column: $table.groomName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brideName => $composableBuilder(
    column: $table.brideName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCodeData => $composableBuilder(
    column: $table.qrCodeData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  $$CardsTableOrderingComposer get cardId {
    final $$CardsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableOrderingComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsCoreTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardFieldsCoreTable> {
  $$CardFieldsCoreTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get company =>
      $composableBuilder(column: $table.company, builder: (column) => column);

  GeneratedColumn<String> get designation => $composableBuilder(
    column: $table.designation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get emailPrimary => $composableBuilder(
    column: $table.emailPrimary,
    builder: (column) => column,
  );

  GeneratedColumn<String> get emailSecondary => $composableBuilder(
    column: $table.emailSecondary,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phonePrimary => $composableBuilder(
    column: $table.phonePrimary,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phoneSecondary => $composableBuilder(
    column: $table.phoneSecondary,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phoneWhatsapp => $composableBuilder(
    column: $table.phoneWhatsapp,
    builder: (column) => column,
  );

  GeneratedColumn<String> get website =>
      $composableBuilder(column: $table.website, builder: (column) => column);

  GeneratedColumn<String> get addressLine1 => $composableBuilder(
    column: $table.addressLine1,
    builder: (column) => column,
  );

  GeneratedColumn<String> get addressLine2 => $composableBuilder(
    column: $table.addressLine2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get aadhaarNumber => $composableBuilder(
    column: $table.aadhaarNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get panNumber =>
      $composableBuilder(column: $table.panNumber, builder: (column) => column);

  GeneratedColumn<String> get dob =>
      $composableBuilder(column: $table.dob, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get linkedinUrl => $composableBuilder(
    column: $table.linkedinUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get twitterHandle => $composableBuilder(
    column: $table.twitterHandle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get instagramHandle => $composableBuilder(
    column: $table.instagramHandle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get weddingDate => $composableBuilder(
    column: $table.weddingDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get weddingVenue => $composableBuilder(
    column: $table.weddingVenue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get groomName =>
      $composableBuilder(column: $table.groomName, builder: (column) => column);

  GeneratedColumn<String> get brideName =>
      $composableBuilder(column: $table.brideName, builder: (column) => column);

  GeneratedColumn<String> get qrCodeData => $composableBuilder(
    column: $table.qrCodeData,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$CardsTableAnnotationComposer get cardId {
    final $$CardsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableAnnotationComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsCoreTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CardFieldsCoreTable,
          CardFieldsCoreData,
          $$CardFieldsCoreTableFilterComposer,
          $$CardFieldsCoreTableOrderingComposer,
          $$CardFieldsCoreTableAnnotationComposer,
          $$CardFieldsCoreTableCreateCompanionBuilder,
          $$CardFieldsCoreTableUpdateCompanionBuilder,
          (CardFieldsCoreData, $$CardFieldsCoreTableReferences),
          CardFieldsCoreData,
          PrefetchHooks Function({bool cardId})
        > {
  $$CardFieldsCoreTableTableManager(
    _$AppDatabase db,
    $CardFieldsCoreTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardFieldsCoreTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardFieldsCoreTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardFieldsCoreTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> cardId = const Value.absent(),
                Value<String?> fullName = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> company = const Value.absent(),
                Value<String?> designation = const Value.absent(),
                Value<String?> emailPrimary = const Value.absent(),
                Value<String?> emailSecondary = const Value.absent(),
                Value<String?> phonePrimary = const Value.absent(),
                Value<String?> phoneSecondary = const Value.absent(),
                Value<String?> phoneWhatsapp = const Value.absent(),
                Value<String?> website = const Value.absent(),
                Value<String?> addressLine1 = const Value.absent(),
                Value<String?> addressLine2 = const Value.absent(),
                Value<String?> city = const Value.absent(),
                Value<String?> state = const Value.absent(),
                Value<String?> pincode = const Value.absent(),
                Value<String> country = const Value.absent(),
                Value<String?> aadhaarNumber = const Value.absent(),
                Value<String?> panNumber = const Value.absent(),
                Value<String?> dob = const Value.absent(),
                Value<String?> gender = const Value.absent(),
                Value<String?> linkedinUrl = const Value.absent(),
                Value<String?> twitterHandle = const Value.absent(),
                Value<String?> instagramHandle = const Value.absent(),
                Value<String?> weddingDate = const Value.absent(),
                Value<String?> weddingVenue = const Value.absent(),
                Value<String?> groomName = const Value.absent(),
                Value<String?> brideName = const Value.absent(),
                Value<String?> qrCodeData = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CardFieldsCoreCompanion(
                id: id,
                cardId: cardId,
                fullName: fullName,
                firstName: firstName,
                lastName: lastName,
                company: company,
                designation: designation,
                emailPrimary: emailPrimary,
                emailSecondary: emailSecondary,
                phonePrimary: phonePrimary,
                phoneSecondary: phoneSecondary,
                phoneWhatsapp: phoneWhatsapp,
                website: website,
                addressLine1: addressLine1,
                addressLine2: addressLine2,
                city: city,
                state: state,
                pincode: pincode,
                country: country,
                aadhaarNumber: aadhaarNumber,
                panNumber: panNumber,
                dob: dob,
                gender: gender,
                linkedinUrl: linkedinUrl,
                twitterHandle: twitterHandle,
                instagramHandle: instagramHandle,
                weddingDate: weddingDate,
                weddingVenue: weddingVenue,
                groomName: groomName,
                brideName: brideName,
                qrCodeData: qrCodeData,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String cardId,
                Value<String?> fullName = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> company = const Value.absent(),
                Value<String?> designation = const Value.absent(),
                Value<String?> emailPrimary = const Value.absent(),
                Value<String?> emailSecondary = const Value.absent(),
                Value<String?> phonePrimary = const Value.absent(),
                Value<String?> phoneSecondary = const Value.absent(),
                Value<String?> phoneWhatsapp = const Value.absent(),
                Value<String?> website = const Value.absent(),
                Value<String?> addressLine1 = const Value.absent(),
                Value<String?> addressLine2 = const Value.absent(),
                Value<String?> city = const Value.absent(),
                Value<String?> state = const Value.absent(),
                Value<String?> pincode = const Value.absent(),
                Value<String> country = const Value.absent(),
                Value<String?> aadhaarNumber = const Value.absent(),
                Value<String?> panNumber = const Value.absent(),
                Value<String?> dob = const Value.absent(),
                Value<String?> gender = const Value.absent(),
                Value<String?> linkedinUrl = const Value.absent(),
                Value<String?> twitterHandle = const Value.absent(),
                Value<String?> instagramHandle = const Value.absent(),
                Value<String?> weddingDate = const Value.absent(),
                Value<String?> weddingVenue = const Value.absent(),
                Value<String?> groomName = const Value.absent(),
                Value<String?> brideName = const Value.absent(),
                Value<String?> qrCodeData = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CardFieldsCoreCompanion.insert(
                id: id,
                cardId: cardId,
                fullName: fullName,
                firstName: firstName,
                lastName: lastName,
                company: company,
                designation: designation,
                emailPrimary: emailPrimary,
                emailSecondary: emailSecondary,
                phonePrimary: phonePrimary,
                phoneSecondary: phoneSecondary,
                phoneWhatsapp: phoneWhatsapp,
                website: website,
                addressLine1: addressLine1,
                addressLine2: addressLine2,
                city: city,
                state: state,
                pincode: pincode,
                country: country,
                aadhaarNumber: aadhaarNumber,
                panNumber: panNumber,
                dob: dob,
                gender: gender,
                linkedinUrl: linkedinUrl,
                twitterHandle: twitterHandle,
                instagramHandle: instagramHandle,
                weddingDate: weddingDate,
                weddingVenue: weddingVenue,
                groomName: groomName,
                brideName: brideName,
                qrCodeData: qrCodeData,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CardFieldsCoreTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cardId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cardId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.cardId,
                                referencedTable: $$CardFieldsCoreTableReferences
                                    ._cardIdTable(db),
                                referencedColumn:
                                    $$CardFieldsCoreTableReferences
                                        ._cardIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CardFieldsCoreTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CardFieldsCoreTable,
      CardFieldsCoreData,
      $$CardFieldsCoreTableFilterComposer,
      $$CardFieldsCoreTableOrderingComposer,
      $$CardFieldsCoreTableAnnotationComposer,
      $$CardFieldsCoreTableCreateCompanionBuilder,
      $$CardFieldsCoreTableUpdateCompanionBuilder,
      (CardFieldsCoreData, $$CardFieldsCoreTableReferences),
      CardFieldsCoreData,
      PrefetchHooks Function({bool cardId})
    >;
typedef $$CardFieldsDynamicTableCreateCompanionBuilder =
    CardFieldsDynamicCompanion Function({
      required String id,
      required String cardId,
      required String fieldKey,
      required String fieldValue,
      Value<double?> confidence,
      Value<String?> source,
      Value<bool> isUserLabelled,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$CardFieldsDynamicTableUpdateCompanionBuilder =
    CardFieldsDynamicCompanion Function({
      Value<String> id,
      Value<String> cardId,
      Value<String> fieldKey,
      Value<String> fieldValue,
      Value<double?> confidence,
      Value<String?> source,
      Value<bool> isUserLabelled,
      Value<int> createdAt,
      Value<int> rowid,
    });

final class $$CardFieldsDynamicTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CardFieldsDynamicTable,
          CardFieldsDynamicData
        > {
  $$CardFieldsDynamicTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CardsTable _cardIdTable(_$AppDatabase db) =>
      db.cards.createAlias('card_fields_dynamic__card_id__cards__id');

  $$CardsTableProcessedTableManager get cardId {
    final $_column = $_itemColumn<String>('card_id')!;

    final manager = $$CardsTableTableManager(
      $_db,
      $_db.cards,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cardIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CardFieldsDynamicTableFilterComposer
    extends Composer<_$AppDatabase, $CardFieldsDynamicTable> {
  $$CardFieldsDynamicTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldKey => $composableBuilder(
    column: $table.fieldKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get confidence => $composableBuilder(
    column: $table.confidence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isUserLabelled => $composableBuilder(
    column: $table.isUserLabelled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$CardsTableFilterComposer get cardId {
    final $$CardsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableFilterComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsDynamicTableOrderingComposer
    extends Composer<_$AppDatabase, $CardFieldsDynamicTable> {
  $$CardFieldsDynamicTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldKey => $composableBuilder(
    column: $table.fieldKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get confidence => $composableBuilder(
    column: $table.confidence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isUserLabelled => $composableBuilder(
    column: $table.isUserLabelled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$CardsTableOrderingComposer get cardId {
    final $$CardsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableOrderingComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsDynamicTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardFieldsDynamicTable> {
  $$CardFieldsDynamicTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fieldKey =>
      $composableBuilder(column: $table.fieldKey, builder: (column) => column);

  GeneratedColumn<String> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => column,
  );

  GeneratedColumn<double> get confidence => $composableBuilder(
    column: $table.confidence,
    builder: (column) => column,
  );

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<bool> get isUserLabelled => $composableBuilder(
    column: $table.isUserLabelled,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$CardsTableAnnotationComposer get cardId {
    final $$CardsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableAnnotationComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CardFieldsDynamicTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CardFieldsDynamicTable,
          CardFieldsDynamicData,
          $$CardFieldsDynamicTableFilterComposer,
          $$CardFieldsDynamicTableOrderingComposer,
          $$CardFieldsDynamicTableAnnotationComposer,
          $$CardFieldsDynamicTableCreateCompanionBuilder,
          $$CardFieldsDynamicTableUpdateCompanionBuilder,
          (CardFieldsDynamicData, $$CardFieldsDynamicTableReferences),
          CardFieldsDynamicData,
          PrefetchHooks Function({bool cardId})
        > {
  $$CardFieldsDynamicTableTableManager(
    _$AppDatabase db,
    $CardFieldsDynamicTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardFieldsDynamicTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardFieldsDynamicTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardFieldsDynamicTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> cardId = const Value.absent(),
                Value<String> fieldKey = const Value.absent(),
                Value<String> fieldValue = const Value.absent(),
                Value<double?> confidence = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<bool> isUserLabelled = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CardFieldsDynamicCompanion(
                id: id,
                cardId: cardId,
                fieldKey: fieldKey,
                fieldValue: fieldValue,
                confidence: confidence,
                source: source,
                isUserLabelled: isUserLabelled,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String cardId,
                required String fieldKey,
                required String fieldValue,
                Value<double?> confidence = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<bool> isUserLabelled = const Value.absent(),
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => CardFieldsDynamicCompanion.insert(
                id: id,
                cardId: cardId,
                fieldKey: fieldKey,
                fieldValue: fieldValue,
                confidence: confidence,
                source: source,
                isUserLabelled: isUserLabelled,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CardFieldsDynamicTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cardId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cardId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.cardId,
                                referencedTable:
                                    $$CardFieldsDynamicTableReferences
                                        ._cardIdTable(db),
                                referencedColumn:
                                    $$CardFieldsDynamicTableReferences
                                        ._cardIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CardFieldsDynamicTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CardFieldsDynamicTable,
      CardFieldsDynamicData,
      $$CardFieldsDynamicTableFilterComposer,
      $$CardFieldsDynamicTableOrderingComposer,
      $$CardFieldsDynamicTableAnnotationComposer,
      $$CardFieldsDynamicTableCreateCompanionBuilder,
      $$CardFieldsDynamicTableUpdateCompanionBuilder,
      (CardFieldsDynamicData, $$CardFieldsDynamicTableReferences),
      CardFieldsDynamicData,
      PrefetchHooks Function({bool cardId})
    >;
typedef $$FieldDefinitionsTableCreateCompanionBuilder =
    FieldDefinitionsCompanion Function({
      required String id,
      required String fieldKey,
      Value<String?> displayName,
      Value<int> occurrenceCount,
      Value<bool> promotedToCore,
      Value<int?> firstSeen,
      Value<int?> lastSeen,
      Value<int> rowid,
    });
typedef $$FieldDefinitionsTableUpdateCompanionBuilder =
    FieldDefinitionsCompanion Function({
      Value<String> id,
      Value<String> fieldKey,
      Value<String?> displayName,
      Value<int> occurrenceCount,
      Value<bool> promotedToCore,
      Value<int?> firstSeen,
      Value<int?> lastSeen,
      Value<int> rowid,
    });

class $$FieldDefinitionsTableFilterComposer
    extends Composer<_$AppDatabase, $FieldDefinitionsTable> {
  $$FieldDefinitionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldKey => $composableBuilder(
    column: $table.fieldKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get occurrenceCount => $composableBuilder(
    column: $table.occurrenceCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get promotedToCore => $composableBuilder(
    column: $table.promotedToCore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get firstSeen => $composableBuilder(
    column: $table.firstSeen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastSeen => $composableBuilder(
    column: $table.lastSeen,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FieldDefinitionsTableOrderingComposer
    extends Composer<_$AppDatabase, $FieldDefinitionsTable> {
  $$FieldDefinitionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldKey => $composableBuilder(
    column: $table.fieldKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get occurrenceCount => $composableBuilder(
    column: $table.occurrenceCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get promotedToCore => $composableBuilder(
    column: $table.promotedToCore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get firstSeen => $composableBuilder(
    column: $table.firstSeen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastSeen => $composableBuilder(
    column: $table.lastSeen,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FieldDefinitionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FieldDefinitionsTable> {
  $$FieldDefinitionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fieldKey =>
      $composableBuilder(column: $table.fieldKey, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get occurrenceCount => $composableBuilder(
    column: $table.occurrenceCount,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get promotedToCore => $composableBuilder(
    column: $table.promotedToCore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get firstSeen =>
      $composableBuilder(column: $table.firstSeen, builder: (column) => column);

  GeneratedColumn<int> get lastSeen =>
      $composableBuilder(column: $table.lastSeen, builder: (column) => column);
}

class $$FieldDefinitionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FieldDefinitionsTable,
          FieldDefinition,
          $$FieldDefinitionsTableFilterComposer,
          $$FieldDefinitionsTableOrderingComposer,
          $$FieldDefinitionsTableAnnotationComposer,
          $$FieldDefinitionsTableCreateCompanionBuilder,
          $$FieldDefinitionsTableUpdateCompanionBuilder,
          (
            FieldDefinition,
            BaseReferences<
              _$AppDatabase,
              $FieldDefinitionsTable,
              FieldDefinition
            >,
          ),
          FieldDefinition,
          PrefetchHooks Function()
        > {
  $$FieldDefinitionsTableTableManager(
    _$AppDatabase db,
    $FieldDefinitionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FieldDefinitionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FieldDefinitionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FieldDefinitionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> fieldKey = const Value.absent(),
                Value<String?> displayName = const Value.absent(),
                Value<int> occurrenceCount = const Value.absent(),
                Value<bool> promotedToCore = const Value.absent(),
                Value<int?> firstSeen = const Value.absent(),
                Value<int?> lastSeen = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FieldDefinitionsCompanion(
                id: id,
                fieldKey: fieldKey,
                displayName: displayName,
                occurrenceCount: occurrenceCount,
                promotedToCore: promotedToCore,
                firstSeen: firstSeen,
                lastSeen: lastSeen,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String fieldKey,
                Value<String?> displayName = const Value.absent(),
                Value<int> occurrenceCount = const Value.absent(),
                Value<bool> promotedToCore = const Value.absent(),
                Value<int?> firstSeen = const Value.absent(),
                Value<int?> lastSeen = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FieldDefinitionsCompanion.insert(
                id: id,
                fieldKey: fieldKey,
                displayName: displayName,
                occurrenceCount: occurrenceCount,
                promotedToCore: promotedToCore,
                firstSeen: firstSeen,
                lastSeen: lastSeen,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FieldDefinitionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FieldDefinitionsTable,
      FieldDefinition,
      $$FieldDefinitionsTableFilterComposer,
      $$FieldDefinitionsTableOrderingComposer,
      $$FieldDefinitionsTableAnnotationComposer,
      $$FieldDefinitionsTableCreateCompanionBuilder,
      $$FieldDefinitionsTableUpdateCompanionBuilder,
      (
        FieldDefinition,
        BaseReferences<_$AppDatabase, $FieldDefinitionsTable, FieldDefinition>,
      ),
      FieldDefinition,
      PrefetchHooks Function()
    >;
typedef $$ScanLogsTableCreateCompanionBuilder =
    ScanLogsCompanion Function({
      required String id,
      Value<String?> cardId,
      Value<String?> ocrEngine,
      Value<int?> preprocessingDurationMs,
      Value<int?> ocrDurationMs,
      Value<int?> extractionDurationMs,
      Value<int?> totalDurationMs,
      Value<String?> errorMessage,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$ScanLogsTableUpdateCompanionBuilder =
    ScanLogsCompanion Function({
      Value<String> id,
      Value<String?> cardId,
      Value<String?> ocrEngine,
      Value<int?> preprocessingDurationMs,
      Value<int?> ocrDurationMs,
      Value<int?> extractionDurationMs,
      Value<int?> totalDurationMs,
      Value<String?> errorMessage,
      Value<int> createdAt,
      Value<int> rowid,
    });

final class $$ScanLogsTableReferences
    extends BaseReferences<_$AppDatabase, $ScanLogsTable, ScanLog> {
  $$ScanLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CardsTable _cardIdTable(_$AppDatabase db) =>
      db.cards.createAlias('scan_logs__card_id__cards__id');

  $$CardsTableProcessedTableManager? get cardId {
    final $_column = $_itemColumn<String>('card_id');
    if ($_column == null) return null;
    final manager = $$CardsTableTableManager(
      $_db,
      $_db.cards,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cardIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ScanLogsTableFilterComposer
    extends Composer<_$AppDatabase, $ScanLogsTable> {
  $$ScanLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ocrEngine => $composableBuilder(
    column: $table.ocrEngine,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get preprocessingDurationMs => $composableBuilder(
    column: $table.preprocessingDurationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ocrDurationMs => $composableBuilder(
    column: $table.ocrDurationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get extractionDurationMs => $composableBuilder(
    column: $table.extractionDurationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$CardsTableFilterComposer get cardId {
    final $$CardsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableFilterComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScanLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $ScanLogsTable> {
  $$ScanLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ocrEngine => $composableBuilder(
    column: $table.ocrEngine,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get preprocessingDurationMs => $composableBuilder(
    column: $table.preprocessingDurationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ocrDurationMs => $composableBuilder(
    column: $table.ocrDurationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get extractionDurationMs => $composableBuilder(
    column: $table.extractionDurationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$CardsTableOrderingComposer get cardId {
    final $$CardsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableOrderingComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScanLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScanLogsTable> {
  $$ScanLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ocrEngine =>
      $composableBuilder(column: $table.ocrEngine, builder: (column) => column);

  GeneratedColumn<int> get preprocessingDurationMs => $composableBuilder(
    column: $table.preprocessingDurationMs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ocrDurationMs => $composableBuilder(
    column: $table.ocrDurationMs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get extractionDurationMs => $composableBuilder(
    column: $table.extractionDurationMs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => column,
  );

  GeneratedColumn<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$CardsTableAnnotationComposer get cardId {
    final $$CardsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cardId,
      referencedTable: $db.cards,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CardsTableAnnotationComposer(
            $db: $db,
            $table: $db.cards,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScanLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ScanLogsTable,
          ScanLog,
          $$ScanLogsTableFilterComposer,
          $$ScanLogsTableOrderingComposer,
          $$ScanLogsTableAnnotationComposer,
          $$ScanLogsTableCreateCompanionBuilder,
          $$ScanLogsTableUpdateCompanionBuilder,
          (ScanLog, $$ScanLogsTableReferences),
          ScanLog,
          PrefetchHooks Function({bool cardId})
        > {
  $$ScanLogsTableTableManager(_$AppDatabase db, $ScanLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScanLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScanLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScanLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> cardId = const Value.absent(),
                Value<String?> ocrEngine = const Value.absent(),
                Value<int?> preprocessingDurationMs = const Value.absent(),
                Value<int?> ocrDurationMs = const Value.absent(),
                Value<int?> extractionDurationMs = const Value.absent(),
                Value<int?> totalDurationMs = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ScanLogsCompanion(
                id: id,
                cardId: cardId,
                ocrEngine: ocrEngine,
                preprocessingDurationMs: preprocessingDurationMs,
                ocrDurationMs: ocrDurationMs,
                extractionDurationMs: extractionDurationMs,
                totalDurationMs: totalDurationMs,
                errorMessage: errorMessage,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> cardId = const Value.absent(),
                Value<String?> ocrEngine = const Value.absent(),
                Value<int?> preprocessingDurationMs = const Value.absent(),
                Value<int?> ocrDurationMs = const Value.absent(),
                Value<int?> extractionDurationMs = const Value.absent(),
                Value<int?> totalDurationMs = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => ScanLogsCompanion.insert(
                id: id,
                cardId: cardId,
                ocrEngine: ocrEngine,
                preprocessingDurationMs: preprocessingDurationMs,
                ocrDurationMs: ocrDurationMs,
                extractionDurationMs: extractionDurationMs,
                totalDurationMs: totalDurationMs,
                errorMessage: errorMessage,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ScanLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cardId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cardId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.cardId,
                                referencedTable: $$ScanLogsTableReferences
                                    ._cardIdTable(db),
                                referencedColumn: $$ScanLogsTableReferences
                                    ._cardIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ScanLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ScanLogsTable,
      ScanLog,
      $$ScanLogsTableFilterComposer,
      $$ScanLogsTableOrderingComposer,
      $$ScanLogsTableAnnotationComposer,
      $$ScanLogsTableCreateCompanionBuilder,
      $$ScanLogsTableUpdateCompanionBuilder,
      (ScanLog, $$ScanLogsTableReferences),
      ScanLog,
      PrefetchHooks Function({bool cardId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CardsTableTableManager get cards =>
      $$CardsTableTableManager(_db, _db.cards);
  $$CardFieldsCoreTableTableManager get cardFieldsCore =>
      $$CardFieldsCoreTableTableManager(_db, _db.cardFieldsCore);
  $$CardFieldsDynamicTableTableManager get cardFieldsDynamic =>
      $$CardFieldsDynamicTableTableManager(_db, _db.cardFieldsDynamic);
  $$FieldDefinitionsTableTableManager get fieldDefinitions =>
      $$FieldDefinitionsTableTableManager(_db, _db.fieldDefinitions);
  $$ScanLogsTableTableManager get scanLogs =>
      $$ScanLogsTableTableManager(_db, _db.scanLogs);
}
