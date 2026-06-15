import 'base_extractor.dart';
import '../ocr/ocr_interface.dart';
import '../classification/card_type_classifier.dart';

class WeddingCardExtractor implements CardFieldExtractor {
  @override
  CardType get supportedType => CardType.wedding;

  @override
  Future<ExtractedCard> extract(List<TextBlock> frontBlocks, List<TextBlock> backBlocks) async {
    final Map<String, dynamic> coreFields = {};
    coreFields['notes'] = 'Extracted as Wedding Card';

    return ExtractedCard(
      cardType: CardType.wedding,
      coreFields: coreFields,
      dynamicFields: {},
      overallConfidence: 0.7,
    );
  }
}
