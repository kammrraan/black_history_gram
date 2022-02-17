import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/View/signup_with_email_phone_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../constants.dart';

enum SignUpOption { phone_number, email }
class CreatePasswordScreen extends StatefulWidget {

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  String _username,
      _email,
      _password = "";
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  SignUpOption _character = SignUpOption.phone_number;
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  FocusNode _newPassFocusNode = FocusNode();
  FocusNode _confirmPassFocusNode = FocusNode();
  bool _isLoading = false;

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'New password is required'),
    MinLengthValidator(8, errorText: 'Password must have 8 characters'),
    // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Confirm and New Password Must be Equal!'),
      ),
    );
  }

  final passwordValidatorConfirm = MultiValidator([

    RequiredValidator(errorText: 'Confirm password is required'),
    MinLengthValidator(8, errorText: 'Password must have 8 characters'),
    // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[

                Row(
                  children: [
                    SizedBox(width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05),

                    GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => SignUpWithEmailOrPhoneNumberScreen(),
                              transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                              transitionDuration: Duration(milliseconds: 0),
                            ),
                          );
                        },

                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20),

                    Center(
                      child: Text(
                        'Create Password',
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05),

                Container(
                  width: devSize.width * 0.85,
                  height: devSize.height * 0.05,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          "Create New Password",
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 20,
                          color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: devSize.width * 0.85,
                  height: devSize.height * 0.04,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          "Please create your password",
                          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black,
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox (height: 20,),
                Container(
                  width: devSize.width * 0.85,
                  child: SizedBox(
                    width: devSize.width * 0.85,
                    child: TextFormField(
                      focusNode: _newPassFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Enter New Password',
                        hintStyle: TextStyle(
                            color: kFormInputColor, fontSize: 13),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(8, 20, 15, 0),
                        // contentPadding: EdgeInsets.only(left: 8,right: 8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: Color(0xFF8D0303),
                            width: 0.2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                      ),
                      obscureText: true,
                      validator: passwordValidator,
                      controller: _newPasswordController,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  width: devSize.width * 0.85,
                  child: SizedBox(
                    width: devSize.width * 0.85,
                    child: TextFormField(
                      focusNode: _confirmPassFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Enter Confirm Password',
                        hintStyle: TextStyle(
                            color: kFormInputColor, fontSize: 13),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(8, 20, 15, 0),
                        // contentPadding: EdgeInsets.only(left: 8,right: 8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: Color(0xFF8D0303),
                            width: 0.2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                        //filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.2,
                          ),
                        ),
                      ),
                      obscureText: true,
                      validator: passwordValidatorConfirm,
                      controller: _confirmPasswordController,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                if (_isLoading)
                  CircularProgressIndicator()
                else
                  GestureDetector(
                    onTap: () {

                      if (_formKey.currentState.validate()) {

                        setState(() {
                          _isLoading = true;
                        });

                        try {

                          if (_newPasswordController.text == _confirmPasswordController.text) {

                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(content: Text(
                                    'Check your email Inbox or spam we have sent you a confirmation link.'),)
                            );
                          }

                          else
                            {
                              this._showToast(context);
                              print('Enter Confirm Password');
                            }
                        }
                        catch (error)
                        {
                          print(error);
                        }
                        setState(() {
                          _isLoading = false;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF8D0303),
                        ),
                        width: devSize.width * 0.85,
                        height: devSize.height * 0.06,
                        child: Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: AutoSizeText('Save', style: TextStyle(
                                color: Colors.white, fontSize: 14,),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                SizedBox(height: 10.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}