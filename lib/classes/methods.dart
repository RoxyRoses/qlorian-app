class Methods {
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid name';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }

  String? validateCPF(String? value) {
    String pattern =
        r'^([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid CPF';
    } else {
      return null;
    }
  }

  String? validateRG(String? value) {
    String pattern = r'^(^\d{1,2}).?(\d{3}).?(\d{3})-?(\d{1}|X|x$)';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid RG';
    } else {
      return null;
    }
  }

  String? validatePhone(String? value) {
    String pattern = r'^(^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$)';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid phone';
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
