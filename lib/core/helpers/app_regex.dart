class AppRegex {
  static bool isEmailValid(String email) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  static bool isPasswordValid(String password) =>
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(password);

  static bool isNameValid(String name) =>
      RegExp(r'^[a-zA-Z ]+$').hasMatch(name);

  static bool hasLowerCase(String password) =>
      RegExp(r'^(?=.*[a-z])').hasMatch(password);

  static bool hasUpperCase(String password) =>
      RegExp(r'^(?=.*[A-Z])').hasMatch(password);

  static bool hasNumber(String password) =>
      RegExp(r'^(?=.*?[0-9])').hasMatch(password);

  static bool hasSpecialCharacter(String password) =>
      RegExp(r'^(?=.*?[!@#?\$%^&*~-])').hasMatch(password);

  static bool hasMinLength(String password) =>
      RegExp(r'^(?=.{8,})').hasMatch(password);
}
