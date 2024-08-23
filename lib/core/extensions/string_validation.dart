extension StringValidation on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return emailRegExp.hasMatch(this);
  }
}
