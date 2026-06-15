import 'base_extractor.dart';
import '../ocr/ocr_interface.dart';
import '../classification/card_type_classifier.dart';
import '../../../core/utils/regex_patterns.dart';

class AadhaarExtractor implements CardFieldExtractor {
  @override
  CardType get supportedType => CardType.aadhaar;

  @override
  Future<ExtractedCard> extract(List<TextBlock> frontBlocks, List<TextBlock> backBlocks) async {
    final allBlocks = [...frontBlocks, ...backBlocks];
    final text = allBlocks.map((b) => b.text).join('\n');

    final Map<String, dynamic> coreFields = {};

    // Extract Aadhaar Number
    final aadhaarMatch = RegexPatterns.aadhaarRegex.firstMatch(text);
    if (aadhaarMatch != null) {
      coreFields['aadhaar_number'] = aadhaarMatch.group(0)?.trim();
    }

    // Extract DOB
    final dobMatch = RegexPatterns.dobRegex.firstMatch(text);
    if (dobMatch != null) {
      coreFields['dob'] = dobMatch.group(1)?.trim();
    }

    // Extract Gender
    if (text.toLowerCase().contains('male') && !text.toLowerCase().contains('female')) {
      coreFields['gender'] = 'Male';
    } else if (text.toLowerCase().contains('female')) {
      coreFields['gender'] = 'Female';
    }

    return ExtractedCard(
      cardType: CardType.aadhaar,
      coreFields: coreFields,
      dynamicFields: {},
      overallConfidence: 0.85,
    );
  }
}
