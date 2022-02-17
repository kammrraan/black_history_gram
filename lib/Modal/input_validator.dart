

class InputValidator {

  String validateName(String value) {
    if(value.isEmpty){
      return 'Enter First Name';
    }
    Pattern pattern =
        r"^([a-zA-Z]{1,}[a-zA-z]{1,}'?-?[a-zA-Z]{1,}?([a-zA-Z]{0,})?)";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter valid first name';
    else
      return null;
  }
  String validateFullName(String value) {
    if(value.isEmpty){
      return 'Enter FUll Name';
    }
    Pattern pattern =
        r"^([a-zA-Z]{2,}[a-zA-z]{1,}'?-?[a-zA-Z]{2,}?([a-zA-Z]{1,})?)";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter valid full name';
    else
      return null;
  }
  String validateLastName(String value) {
    if(value.isEmpty){
      return 'Enter Last Name';
    }
    Pattern pattern =
        r"^([a-zA-Z]{1,}[a-zA-z]{1,}'?-?[a-zA-Z]{1,}?([a-zA-Z]{0,})?)";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter valid last name';
    else
      return null;
  }

  String validateMobile(String value) {
    if (value.isEmpty)
      return 'Enter Phone Number';
    String pattern = r'^(\+\d{1,3}?)?\d{11}$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    else if(!value.toString().startsWith('+')) {
      return 'Phone Number Starts with + followed by code then number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please Enter Valid Mobile Number';
    }
    return null;
  }

  String validateEmail(String value) {
    if (value.isEmpty)
      return 'Enter Email Address';
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Wrong email, please use a correct email';
    else
      return null;
  }

  String validateInput(String value) {
    if (value.isEmpty)
      return 'Enter Some Text';
    else
      return null;
  }

  bool _isNumeric(String result) {
    if (result == null) {
      return false;
    }
    return double.tryParse(result) != null;
  }

  String validate(String input) {
    if (input.isEmpty) {
      return 'Enter Email/Phone Number';
    }
    else {
      bool isNumber = _isNumeric(input);
      if (isNumber == true) {
        return validateMobile(input);
      }
      else {
        return validateEmail(input);
      }
    }
  }
}