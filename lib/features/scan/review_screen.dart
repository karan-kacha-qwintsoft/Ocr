import 'package:flutter/material.dart';
import 'extraction/base_extractor.dart';
import '../../data/database/database.dart' as db;
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../cards/card_list_screen.dart';

class FieldMapping {
  String mappedKey;
  String value;
  FieldMapping({required this.mappedKey, required this.value});
}

class ReviewScreen extends ConsumerStatefulWidget {
  final ExtractedCard extractedData;
  final String frontImagePath;
  final String? backImagePath;

  const ReviewScreen({
    Key? key,
    required this.extractedData,
    required this.frontImagePath,
    this.backImagePath,
  }) : super(key: key);

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  final List<FieldMapping> _mappings = [];

  static const Map<String, String> availableFields = {
    'full_name': 'Full Name',
    'first_name': 'First Name',
    'last_name': 'Last Name',
    'company': 'Company',
    'designation': 'Designation',
    'phone_primary': 'Phone (Primary)',
    'phone_secondary': 'Phone (Secondary)',
    'phone_whatsapp': 'WhatsApp',
    'email_primary': 'Email (Primary)',
    'email_secondary': 'Email (Secondary)',
    'website': 'Website',
    'address_line_1': 'Address Line 1',
    'address_line_2': 'Address Line 2',
    'city': 'City',
    'state': 'State',
    'pincode': 'Pincode / Zip',
    'country': 'Country',
    'linkedin_url': 'LinkedIn',
    'twitter_handle': 'Twitter',
    'aadhaar_number': 'Aadhaar Number',
    'pan_number': 'PAN Number',
    'dob': 'Date of Birth',
    'gender': 'Gender',
    'unmapped': 'Custom / Other',
  };

  @override
  void initState() {
    super.initState();
    
    // Core fields
    widget.extractedData.coreFields.forEach((key, value) {
      if (value != null && value.toString().isNotEmpty) {
        // Only map if key exists in availableFields, otherwise fallback to unmapped
        final mappedKey = availableFields.containsKey(key) ? key : 'unmapped';
        _mappings.add(FieldMapping(mappedKey: mappedKey, value: value.toString()));
      }
    });

    // Dynamic fields default to unmapped
    widget.extractedData.dynamicFields.forEach((key, value) {
      if (value != null && value.toString().isNotEmpty) {
        _mappings.add(FieldMapping(mappedKey: 'unmapped', value: value.toString()));
      }
    });
  }

  Future<void> _saveData() async {
    final cardId = const Uuid().v4();
    final card = db.CardsCompanion(
      id: drift.Value(cardId),
      cardType: drift.Value(widget.extractedData.cardType.name),
      scanDate: drift.Value(DateTime.now().millisecondsSinceEpoch),
      frontImage: drift.Value(widget.frontImagePath),
      backImage: widget.backImagePath != null ? drift.Value(widget.backImagePath!) : const drift.Value.absent(),
      overallConfidence: drift.Value(widget.extractedData.overallConfidence),
      createdAt: drift.Value(DateTime.now().millisecondsSinceEpoch),
      updatedAt: drift.Value(DateTime.now().millisecondsSinceEpoch),
    );

    final coreFieldsMap = <String, String>{};
    final dynFields = <db.CardFieldsDynamicCompanion>[];

    int customCount = 0;
    for (var mapping in _mappings) {
      if (mapping.value.trim().isEmpty) continue;
      
      if (mapping.mappedKey == 'unmapped') {
        dynFields.add(db.CardFieldsDynamicCompanion(
          id: drift.Value(const Uuid().v4()),
          cardId: drift.Value(cardId),
          fieldKey: drift.Value('custom_field_${customCount++}'),
          fieldValue: drift.Value(mapping.value.trim()),
          createdAt: drift.Value(DateTime.now().millisecondsSinceEpoch),
        ));
      } else {
        coreFieldsMap[mapping.mappedKey] = mapping.value.trim();
      }
    }

    final coreFields = db.CardFieldsCoreCompanion(
      id: drift.Value(const Uuid().v4()),
      cardId: drift.Value(cardId),
      fullName: drift.Value(coreFieldsMap['full_name']),
      firstName: drift.Value(coreFieldsMap['first_name']),
      lastName: drift.Value(coreFieldsMap['last_name']),
      company: drift.Value(coreFieldsMap['company']),
      designation: drift.Value(coreFieldsMap['designation']),
      phonePrimary: drift.Value(coreFieldsMap['phone_primary']),
      phoneSecondary: drift.Value(coreFieldsMap['phone_secondary']),
      phoneWhatsapp: drift.Value(coreFieldsMap['phone_whatsapp']),
      emailPrimary: drift.Value(coreFieldsMap['email_primary']),
      emailSecondary: drift.Value(coreFieldsMap['email_secondary']),
      website: drift.Value(coreFieldsMap['website']),
      addressLine1: drift.Value(coreFieldsMap['address_line_1']),
      addressLine2: drift.Value(coreFieldsMap['address_line_2']),
      city: drift.Value(coreFieldsMap['city']),
      state: drift.Value(coreFieldsMap['state']),
      pincode: drift.Value(coreFieldsMap['pincode']),
      country: drift.Value(coreFieldsMap['country'] ?? 'India'), // default if null? Drift allows absent if default is set.
      linkedinUrl: drift.Value(coreFieldsMap['linkedin_url']),
      twitterHandle: drift.Value(coreFieldsMap['twitter_handle']),
      aadhaarNumber: drift.Value(coreFieldsMap['aadhaar_number']),
      panNumber: drift.Value(coreFieldsMap['pan_number']),
      dob: drift.Value(coreFieldsMap['dob']),
      gender: drift.Value(coreFieldsMap['gender']),
    );

    try {
      final database = ref.read(databaseProvider);
      await database.saveExtractedCard(
        card: card,
        coreFields: coreFields,
        dynamicFields: dynFields,
      );
      
      if (mounted) {
        Navigator.of(context).popUntil((route) => route.isFirst);
      }
    } catch (e, st) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save error: $e')));
        print('Error: $e\n$st');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Extracted Data'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _mappings.length,
        itemBuilder: (context, index) {
          final mapping = _mappings[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      border: OutlineInputBorder(),
                    ),
                    value: mapping.mappedKey,
                    items: availableFields.entries.map((e) {
                      return DropdownMenuItem(value: e.key, child: Text(e.value, style: const TextStyle(fontSize: 11)));
                    }).toList(),
                    onChanged: (val) {
                      if (val != null) {
                        setState(() { mapping.mappedKey = val; });
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    initialValue: mapping.value,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(fontSize: 14),
                    maxLines: null,
                    onChanged: (val) {
                      mapping.value = val;
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () {
                    setState(() { _mappings.removeAt(index); });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _saveData,
        icon: const Icon(Icons.save),
        label: const Text('Save Card'),
      ),
    );
  }
}
