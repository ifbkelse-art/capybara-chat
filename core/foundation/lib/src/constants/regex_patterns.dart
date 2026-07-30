final class RegexPatterns {
  RegexPatterns._();

  static const phone = r'^\+?[1-9]\d{7,14}$';

  static const username = r'^[a-zA-Z0-9_]{3,30}$';

  static const otp = r'^\d{6}$';

  static const email = r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
}
