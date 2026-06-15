import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'card_list_screen.dart';

final cardDetailProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, cardId) async {
  final database = ref.read(databaseProvider);
  
  final coreFields = await (database.select(database.cardFieldsCore)..where((t) => t.cardId.equals(cardId))).getSingleOrNull();
  final dynFields = await (database.select(database.cardFieldsDynamic)..where((t) => t.cardId.equals(cardId))).get();
  
  final Map<String, dynamic> data = {};
  
  if (coreFields != null) {
    if (coreFields.fullName != null && coreFields.fullName!.isNotEmpty) data['full_name'] = coreFields.fullName;
    if (coreFields.phonePrimary != null && coreFields.phonePrimary!.isNotEmpty) data['phone_primary'] = coreFields.phonePrimary;
    if (coreFields.phoneSecondary != null && coreFields.phoneSecondary!.isNotEmpty) data['phone_secondary'] = coreFields.phoneSecondary;
    if (coreFields.emailPrimary != null && coreFields.emailPrimary!.isNotEmpty) data['email_primary'] = coreFields.emailPrimary;
    if (coreFields.website != null && coreFields.website!.isNotEmpty) data['website'] = coreFields.website;
    if (coreFields.aadhaarNumber != null && coreFields.aadhaarNumber!.isNotEmpty) data['aadhaar_number'] = coreFields.aadhaarNumber;
    if (coreFields.dob != null && coreFields.dob!.isNotEmpty) data['dob'] = coreFields.dob;
    if (coreFields.gender != null && coreFields.gender!.isNotEmpty) data['gender'] = coreFields.gender;
    if (coreFields.notes != null && coreFields.notes!.isNotEmpty) data['notes'] = coreFields.notes;
  }
  
  for (var df in dynFields) {
    data[df.fieldKey] = df.fieldValue;
  }
  
  return data;
});

class CardDetailScreen extends ConsumerWidget {
  final String cardId;

  const CardDetailScreen({Key? key, required this.cardId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(cardDetailProvider(cardId));

    return Scaffold(
      appBar: AppBar(title: const Text('Card Details')),
      body: detailAsync.when(
        data: (data) {
          if (data.isEmpty) return const Center(child: Text('No details found.'));
          return ListView(
            padding: const EdgeInsets.all(16),
            children: data.entries.map((e) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.key.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      e.value.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              );
            }).toList(),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
