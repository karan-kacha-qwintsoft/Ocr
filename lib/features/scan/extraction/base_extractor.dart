import '../ocr/ocr_interface.dart';
import '../classification/card_type_classifier.dart';

class ExtractedCard {
  final CardType cardType;
  final Map<String, dynamic> coreFields;
  final Map<String, dynamic> dynamicFields;
  final double overallConfidence;

  ExtractedCard({
    required this.cardType,
    required this.coreFields,
    required this.dynamicFields,
    required this.overallConfidence,
  });
}

abstract class CardFieldExtractor {
  CardType get supportedType;
  Future<ExtractedCard> extract(List<TextBlock> frontBlocks, List<TextBlock> backBlocks);
}
