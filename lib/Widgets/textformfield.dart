import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField({
    Key key,
    FocusNode focusNode,
    @required String hint,
    @required TextInputType inputType,
    InputValidator inputValidator,
    @required TextEditingController controller,
  }) : _focusNode = focusNode ,_hint = hint ,_inputType = inputType ,_inputValidator = inputValidator, _controller = controller, super(key: key);
  final FocusNode _focusNode;
  final String _hint;
  final TextInputType _inputType;
  final InputValidator _inputValidator;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return
      Container(
      width: devSize.width*0.85,
      child: SizedBox(
        width: devSize.width*0.85,
        child: TextFormField(
          focusNode: _focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: _hint,
            hintStyle: TextStyle(color: kFormInputColor, fontSize: 13, ),
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(8, 20, 15, 0),
            // contentPadding: EdgeInsets.only(left: 8,right: 8),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color: Color(0xFF8D0303),
                width: 0.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color: kSectionTileColor,
                width: 0.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color:  kSectionTileColor,
                width: 0.5,
              ),
            ),

            //filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color: kSectionTileColor,
                width: 0.5,
              ),
            ),
          ),
          obscureText: false,
          validator: (_hint == 'First Name' ||  _hint == 'Jonathan Diaz' )  ? _inputValidator.validateName
              : _hint == 'Enter Full Name' ? _inputValidator.validateFullName
              : (_hint == 'Password' || _hint == 'Enter Verification Code') ? _inputValidator.validateInput
              : (_hint == 'Enter Email Address' || _hint == 'Enter Phone Number' || _hint == 'Enter Email/Phone Number')  ? _inputValidator.validate
              : _hint == 'laurel.gray@mail.com' ? _inputValidator.validateEmail
              : (_hint == 'Last Name' || _hint == 'Ryan Pierce') ? _inputValidator.validateLastName
              : _inputValidator.validateInput,
          controller: _controller,
          keyboardType: _inputType,
        ),
      ),
    );

  }
}

