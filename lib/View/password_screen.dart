import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:black_history_gram/View/login_with_email_and_phone_screen.dart';
import 'package:black_history_gram/View/reset_password_with_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../constants.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  var _focusNode = new FocusNode();
  InputValidator _inputValidator = InputValidator();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = false;
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password must have 8 characters'),
    // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

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
      key: _scaffoldKey,
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
                        child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined, size: 20,),
                            onPressed: () {

                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginWithEmailAndPassword(),
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
              SizedBox(
                height: 4,
              ),
              Container(
                width: devSize.width*0.7,
                height: devSize.height*0.03,
                child:  Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText('Please login to your app',
                      style: TextStyle(color: Colors.black, fontSize: 13,
                      fontWeight: FontWeight.w300
                      ),textAlign: TextAlign.center, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child:
                Container(
                  width: devSize.width*0.85,
                  child: SizedBox(
                    width: devSize.width*0.85,
                    child: TextFormField(
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
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
                      obscureText: true,
                      validator: passwordValidator,
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => ResetPasswordWithEmailScreen(),
                      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: devSize.width*0.85,
                    height: devSize.height*0.03,
                    child: Text('Forget Password?', style: TextStyle(color: Colors.black, fontSize: 12),),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
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
                    // Navigator.pushReplacement(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (c, a1, a2) => PasswordScreen(phone),
                    //     transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                    //     transitionDuration: Duration(milliseconds: 0),
                    //   ),
                    // );
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
                            child: AutoSizeText('Log in', style: TextStyle( color: _focusNode.hasFocus ? Colors.white : kDarkGreyColor,fontSize: 15,),textAlign: TextAlign.center, ),
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
