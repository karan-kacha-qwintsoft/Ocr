import '../ocr/ocr_interface.dart';

enum CardType { business, visiting, wedding, aadhaar, unknown }

class CardTypeClassifier {
  CardType classifyCard(List<TextBlock> blocks) {
    final text = blocks.map((b) => b.text.toLowerCase()).join(' ');

    if (containsAadhaarPattern(text)) return CardType.aadhaar;
    if (containsWeddingKeywords(text)) return CardType.wedding;
    if (containsDesignationKeywords(text) || containsCompanySuffixes(text)) return CardType.business;
    if (containsPersonalContact(text)) return CardType.visiting;
    
    return CardType.unknown;
  }

  bool containsAadhaarPattern(String text) {
    return text.contains('aadhaar') || text.contains('government of india') || RegExp(r'\b[2-9]\d{3}\s?\d{4}\s?\d{4}\b').hasMatch(text);
  }

  bool containsWeddingKeywords(String text) {
    return text.contains('shubh vivah') || text.contains('wedding') || text.contains('cordially invite') || text.contains('barat');
  }

  bool containsDesignationKeywords(String text) {
    const keywords = ['ceo', 'manager', 'engineer', 'director', 'founder', 'officer', 'executive'];
    return keywords.any((k) => text.contains(k));
  }
  
  bool containsCompanySuffixes(String text) {
    const suffixes = ['pvt ltd', 'llc', 'inc', 'ltd'];
    return suffixes.any((s) => text.contains(s));
  }

  bool containsPersonalContact(String text) {
    return RegExp(r'\b[6-9]\d{9}\b').hasMatch(text);
  }
}
