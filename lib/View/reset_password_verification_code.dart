import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:black_history_gram/View/reset_password_with_email_screen.dart';
import 'package:black_history_gram/View/signup_screen.dart';
import 'package:black_history_gram/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class PasswordVerificationScreen extends StatefulWidget {
  @override
  _PasswordVerificationScreenState createState() => _PasswordVerificationScreenState();
}

class _PasswordVerificationScreenState extends State<PasswordVerificationScreen> {
  var _focusNode = new FocusNode();
  InputValidator _inputValidator = InputValidator();
  TextEditingController _controller = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _focusListener() {
    setState(() {});
  }

  @override
  void initState() {
    _focusNode.addListener(_focusListener);
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.removeListener(_focusListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, ),
                    child: Container(
                      width: devSize.width*0.09,
                      height: devSize.height*0.05,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined, size: 20,),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => ResetPasswordWithEmailScreen(),
                                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                                  transitionDuration: Duration(milliseconds: 0),
                                ),
                              );
                            }
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 37, right: 40),
                        child: Container(
                            width: devSize.width*0.7,
                            height: devSize.height*0.03,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: AutoSizeText('Reset Password', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold), ))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: devSize.height*0.04,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 30),
                  width: devSize.width,
                  child: Text('Verification Code', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.left, ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                width: devSize.width,
                height: devSize.height*0.05,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: AutoSizeText('We send you a code at the associate phone number please check your inbox to reset the password',
                    style: TextStyle(color: kDarkGreyColor, fontSize: 10,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.start, ),
                ),
              ),
              SizedBox(
                height: devSize.height*0.03,
              ),

              Form(
                key: _formKey,
                child:
                BuildTextFormField(
                    focusNode: _focusNode,
                    hint: 'Enter Verification Code',
                    inputType: TextInputType.text,
                    inputValidator: _inputValidator,
                    controller: _controller
                ),
              ),

              SizedBox(
                height: devSize.height*0.012,
              ),

              Container(
                padding: EdgeInsets.only(right: 30),
                width: devSize.width,
                height: devSize.height*0.05,
                child: Align(
                  alignment: Alignment.topRight,
                  child: AutoSizeText('Try Again', style: TextStyle(color: Colors.red, fontSize: 10,decoration: TextDecoration.underline),textAlign: TextAlign.end, ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context ,MaterialPageRoute(builder: (context)=> PasswordScreen()));
                  if(_formKey.currentState.validate()) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => SignUpScreen(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _focusNode.hasFocus ? Color(0xFF8D0303) : kSectionTileColor,
                    ),
                    width: devSize.width*0.85,
                    height: devSize.height*0.06,
                    child:   Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: AutoSizeText('Next', style: TextStyle( color: _focusNode.hasFocus ? Colors.white : kDarkGreyColor, fontSize: 14,),textAlign: TextAlign.center, ),
                        ),
                      ),
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
