class RegexPatterns {
  // Phone numbers (Indian formats)
  static final phoneRegex = RegExp(
    r'(?:(?:\+|0{0,2})91[\s\-]?)?[6-9]\d{9}|(?:\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}',
  );

  // Email
  static final emailRegex = RegExp(
    r'[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}',
  );

  // URL
  static final urlRegex = RegExp(
    r'(?:https?://)?(?:www\.)?[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}(?:/[^\s]*)?',
  );

  // Aadhaar
  static final aadhaarRegex = RegExp(r'\b[2-9]\d{3}\s?\d{4}\s?\d{4}\b');

  // PAN
  static final panRegex = RegExp(r'[A-Z]{5}[0-9]{4}[A-Z]{1}');

  // Indian PIN Code
  static final pincodeRegex = RegExp(r'\b[1-9][0-9]{5}\b');

  // Date of Birth (multiple formats)
  static final dobRegex = RegExp(
    r'(?:DOB|D\.O\.B|Born|Birth)[\s:]*(\d{2}[\/\-]\d{2}[\/\-]\d{2,4})',
    caseSensitive: false,
  );
}
