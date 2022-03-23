class Methods {
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid name';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }

  String? confirmPassword(String? value1, String? value2) {
    if (value1 != value2) {
      return 'The passwords must match';
    }
    if (value2 == null || value2.isEmpty) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }
}
