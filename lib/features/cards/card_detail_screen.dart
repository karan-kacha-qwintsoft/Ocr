import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'card_list_screen.dart';

final cardDetailProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, cardId) async {
  final database = ref.read(databaseProvider);
  
  final coreFields = await (database.select(database.cardFieldsCore)..where((t) => t.cardId.equals(cardId))).getSingleOrNull();
  final dynFields = await (database.select(database.cardFieldsDynamic)..where((t) => t.cardId.equals(cardId))).get();
  
  final Map<String, dynamic> data = {};
  
  if (coreFields != null) {
    if (coreFields.fullName != null && coreFields.fullName!.isNotEmpty) data['Full Name'] = coreFields.fullName;
    if (coreFields.firstName != null && coreFields.firstName!.isNotEmpty) data['First Name'] = coreFields.firstName;
    if (coreFields.lastName != null && coreFields.lastName!.isNotEmpty) data['Last Name'] = coreFields.lastName;
    if (coreFields.company != null && coreFields.company!.isNotEmpty) data['Company'] = coreFields.company;
    if (coreFields.designation != null && coreFields.designation!.isNotEmpty) data['Designation'] = coreFields.designation;
    if (coreFields.phonePrimary != null && coreFields.phonePrimary!.isNotEmpty) data['Phone (Primary)'] = coreFields.phonePrimary;
    if (coreFields.phoneSecondary != null && coreFields.phoneSecondary!.isNotEmpty) data['Phone (Secondary)'] = coreFields.phoneSecondary;
    if (coreFields.phoneWhatsapp != null && coreFields.phoneWhatsapp!.isNotEmpty) data['WhatsApp'] = coreFields.phoneWhatsapp;
    if (coreFields.emailPrimary != null && coreFields.emailPrimary!.isNotEmpty) data['Email (Primary)'] = coreFields.emailPrimary;
    if (coreFields.emailSecondary != null && coreFields.emailSecondary!.isNotEmpty) data['Email (Secondary)'] = coreFields.emailSecondary;
    if (coreFields.website != null && coreFields.website!.isNotEmpty) data['Website'] = coreFields.website;
    if (coreFields.addressLine1 != null && coreFields.addressLine1!.isNotEmpty) data['Address Line 1'] = coreFields.addressLine1;
    if (coreFields.addressLine2 != null && coreFields.addressLine2!.isNotEmpty) data['Address Line 2'] = coreFields.addressLine2;
    if (coreFields.city != null && coreFields.city!.isNotEmpty) data['City'] = coreFields.city;
    if (coreFields.state != null && coreFields.state!.isNotEmpty) data['State'] = coreFields.state;
    if (coreFields.pincode != null && coreFields.pincode!.isNotEmpty) data['Pincode'] = coreFields.pincode;
    if (coreFields.country != null && coreFields.country!.isNotEmpty) data['Country'] = coreFields.country;
    if (coreFields.linkedinUrl != null && coreFields.linkedinUrl!.isNotEmpty) data['LinkedIn'] = coreFields.linkedinUrl;
    if (coreFields.twitterHandle != null && coreFields.twitterHandle!.isNotEmpty) data['Twitter'] = coreFields.twitterHandle;
    if (coreFields.aadhaarNumber != null && coreFields.aadhaarNumber!.isNotEmpty) data['Aadhaar Number'] = coreFields.aadhaarNumber;
    if (coreFields.panNumber != null && coreFields.panNumber!.isNotEmpty) data['PAN Number'] = coreFields.panNumber;
    if (coreFields.dob != null && coreFields.dob!.isNotEmpty) data['Date of Birth'] = coreFields.dob;
    if (coreFields.gender != null && coreFields.gender!.isNotEmpty) data['Gender'] = coreFields.gender;
    if (coreFields.notes != null && coreFields.notes!.isNotEmpty) data['Notes'] = coreFields.notes;
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
