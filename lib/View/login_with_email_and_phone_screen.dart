import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:black_history_gram/View/password_screen.dart';
import 'package:black_history_gram/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'login_screen.dart';

class LoginWithEmailAndPassword extends StatefulWidget {
  @override
  _LoginWithEmailAndPasswordState createState() => _LoginWithEmailAndPasswordState();
}

class _LoginWithEmailAndPasswordState extends State<LoginWithEmailAndPassword> {
  var _focusNode = new FocusNode();
  TextEditingController _controller = TextEditingController();
  InputValidator _inputValidator = InputValidator();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
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
      resizeToAvoidBottomInset: false,
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
                        child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined, size: 20, color: Colors.black,),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginScreen(),
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
                                child: AutoSizeText('Login', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold), ))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: devSize.height*0.21,
                width: devSize.width*0.5,
                child: Container(
                  child: Image.asset('assets/rendzio.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.5,
                  //height: devSizeHeight*0.2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child:  Center(
                  child: Text('Hello!', style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              Container(
                width: devSize.width*0.7,
                height: devSize.height*0.03,
                child:  Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText('Please login to your app',
                      style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child:
                    BuildTextFormField(
                        focusNode: _focusNode,
                        hint: 'Enter Email/Phone Number',
                        inputType: TextInputType.text,
                        inputValidator: _inputValidator,
                        controller: _controller
                    ),
                  )
              ),
              SizedBox(
                height: 20,
              ),

              if (_isLoading)
                CircularProgressIndicator()
              else
                GestureDetector(
                  onTap: () async {
                    if (!_formKey.currentState.validate()) {
                      // Invalid!
                      return;
                    }
                    _formKey.currentState.save();
                    print("Success");
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => PasswordScreen(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _focusNode.hasFocus ? Color(0xFF8D0303) : kGreyColor,
                      ),
                      width: devSize.width*0.85,
                      height: devSize.height*0.06,
                      child:   Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: AutoSizeText('Next', style: TextStyle( color: _focusNode.hasFocus ? Colors.white : kDarkGreyColor ,fontSize: 14,),textAlign: TextAlign.center, ),
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