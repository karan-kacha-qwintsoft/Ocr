import 'base_extractor.dart';
import '../ocr/ocr_interface.dart';
import '../classification/card_type_classifier.dart';

class DynamicFieldExtractor implements CardFieldExtractor {
  @override
  CardType get supportedType => CardType.unknown;

  @override
  Future<ExtractedCard> extract(List<TextBlock> frontBlocks, List<TextBlock> backBlocks) async {
    final Map<String, dynamic> dynamicFields = {};
    for (int i = 0; i < frontBlocks.length; i++) {
      dynamicFields['front_field_$i'] = frontBlocks[i].text;
    }
    for (int i = 0; i < backBlocks.length; i++) {
      dynamicFields['back_field_$i'] = backBlocks[i].text;
    }

    return ExtractedCard(
      cardType: CardType.unknown,
      coreFields: {},
      dynamicFields: dynamicFields,
      overallConfidence: 0.5,
    );
  }
}
