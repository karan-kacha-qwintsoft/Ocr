import 'base_extractor.dart';
import '../ocr/ocr_interface.dart';
import '../classification/card_type_classifier.dart';
import '../../../core/utils/regex_patterns.dart';

class BusinessCardExtractor implements CardFieldExtractor {
  @override
  CardType get supportedType => CardType.business;

  @override
  Future<ExtractedCard> extract(List<TextBlock> frontBlocks, List<TextBlock> backBlocks) async {
    final allBlocks = [...frontBlocks, ...backBlocks];
    final text = allBlocks.map((b) => b.text).join('\n');

    final Map<String, dynamic> coreFields = {};
    
    // Extract Phones
    final phoneMatches = RegexPatterns.phoneRegex.allMatches(text);
    if (phoneMatches.isNotEmpty) {
      coreFields['phone_primary'] = phoneMatches.elementAt(0).group(0)?.trim();
      if (phoneMatches.length > 1) {
        coreFields['phone_secondary'] = phoneMatches.elementAt(1).group(0)?.trim();
      }
    }

    // Extract Emails
    final emailMatches = RegexPatterns.emailRegex.allMatches(text);
    if (emailMatches.isNotEmpty) {
      coreFields['email_primary'] = emailMatches.elementAt(0).group(0)?.trim();
    }

    // Extract Websites
    final urlMatches = RegexPatterns.urlRegex.allMatches(text);
    if (urlMatches.isNotEmpty) {
      coreFields['website'] = urlMatches.elementAt(0).group(0)?.trim();
    }

    // Naive name extraction (usually largest text or first few lines not matching other patterns)
    for (var block in allBlocks) {
      final bText = block.text.trim();
      if (!RegexPatterns.phoneRegex.hasMatch(bText) &&
          !RegexPatterns.emailRegex.hasMatch(bText) &&
          !RegexPatterns.urlRegex.hasMatch(bText) &&
          bText.length > 2) {
        if (!coreFields.containsKey('full_name')) {
          coreFields['full_name'] = bText;
          break;
        }
      }
    }

    final Map<String, dynamic> dynamicFields = {};
    int frontCounter = 0;
    for (var block in frontBlocks) {
      final bText = block.text.trim();
      if (!RegexPatterns.phoneRegex.hasMatch(bText) &&
          !RegexPatterns.emailRegex.hasMatch(bText) &&
          !RegexPatterns.urlRegex.hasMatch(bText) &&
          bText != coreFields['full_name'] &&
          bText.length > 2) {
        dynamicFields['front_field_${frontCounter++}'] = bText;
      }
    }

    int backCounter = 0;
    for (var block in backBlocks) {
      final bText = block.text.trim();
      if (!RegexPatterns.phoneRegex.hasMatch(bText) &&
          !RegexPatterns.emailRegex.hasMatch(bText) &&
          !RegexPatterns.urlRegex.hasMatch(bText) &&
          bText != coreFields['full_name'] &&
          bText.length > 2) {
        dynamicFields['back_field_${backCounter++}'] = bText;
      }
    }

    return ExtractedCard(
      cardType: CardType.business,
      coreFields: coreFields,
      dynamicFields: dynamicFields,
      overallConfidence: 0.8,
    );
  }
}
