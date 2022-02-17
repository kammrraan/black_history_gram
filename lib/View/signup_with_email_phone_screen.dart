import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:black_history_gram/View/create_password.dart';
import 'package:black_history_gram/View/signup_screen.dart';
import 'package:black_history_gram/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

enum SelectMethod { PhoneNumber, Email }
class SignUpWithEmailOrPhoneNumberScreen extends StatefulWidget {
  @override
  _SignUpWithEmailOrPhoneNumberScreenState createState() => _SignUpWithEmailOrPhoneNumberScreenState();
}

class _SignUpWithEmailOrPhoneNumberScreenState extends State<SignUpWithEmailOrPhoneNumberScreen> {
  SelectMethod _method = SelectMethod.PhoneNumber;
  var _focusNodeFirstName = new FocusNode();
  var _focusNodeLastName = new FocusNode();
  var _focusNodeEmail = new FocusNode();
  var _focusNodePhoneNumber = new FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _firtNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  InputValidator _inputValidator = InputValidator();
  bool _isLoading = false;
  bool _isLoadingResend = false;

  _focusListener() {
    setState(() {});
  }

  @override
  void initState() {
    _focusNodeFirstName.addListener(_focusListener);
    _focusNodeLastName.addListener(_focusListener);
    _focusNodeEmail.addListener(_focusListener);
    _focusNodePhoneNumber.addListener(_focusListener);
    super.initState();
  }

  @override
  void dispose() {
    _focusNodeFirstName.addListener(_focusListener);
    _focusNodeLastName.addListener(_focusListener);
    _focusNodeEmail.addListener(_focusListener);
    _focusNodePhoneNumber.addListener(_focusListener);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
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
                        child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined, size: 19,),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => SignUpScreen(),
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
                            child: AutoSizeText('Sign up', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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
                  child: Text('Hello!',
                    style: TextStyle(color: Colors.black, fontSize: 23,
                    fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: devSize.width*0.7,
                height: devSize.height*0.03,
                child:  Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText('Please Registration with Email or Phone', style: TextStyle(color: Colors.black, fontSize: 13,
                        fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center, ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      BuildTextFormField(
                          focusNode: _focusNodeFirstName,
                          hint: 'First Name',
                          inputType: TextInputType.text,
                          inputValidator: _inputValidator,
                          controller: _firtNameController
                      ),
                      SizedBox(height: 5,),
                      BuildTextFormField(
                          focusNode: _focusNodeLastName,
                          hint: 'Last Name',
                          inputType: TextInputType.text,
                          inputValidator: _inputValidator,
                          controller: _lastNameController
                      ),
                      SizedBox( height: devSize.height*0.03,),
                      Container(
                        width: devSize.width*0.85,
                        height: devSize.height*0.04,
                        child: Text('Sign up With:', style: TextStyle(color: kDarkButtonBg, fontSize: 14,fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        height: devSize.height*0.05,
                        width: devSize.width*0.75,
                        child: Row(
                          children: [
                            Container(
                              width: devSize.width*0.08,
                              child: Radio(
                                activeColor: Colors.lime,
                                value: SelectMethod.PhoneNumber,
                                groupValue: _method,
                                onChanged: (SelectMethod value) {
                                  setState(() {
                                    _method = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: devSize.width*0.3,
                              child: const Text('Phone Number', style: TextStyle(fontSize: 13,),),
                            ),
                            SizedBox(
                              width: devSize.width*0.05,
                            ),
                            Container(
                              width: devSize.width*0.08,
                              child: Radio(
                                activeColor: Colors.lime,
                                value: SelectMethod.Email,
                                groupValue: _method,
                                onChanged: (SelectMethod value) {
                                  setState(() {
                                    _method = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: devSize.width*0.17,
                              child: const Text('Email',style: TextStyle(fontSize: 13,),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      _method.toString() == SelectMethod.Email.toString() ?
                      BuildTextFormField(
                          focusNode: _focusNodeEmail,
                          hint: 'Enter Email Address',
                          inputType: TextInputType.text,
                          inputValidator: _inputValidator,
                          controller: _emailController
                      ) :
                      BuildTextFormField(
                          focusNode: _focusNodePhoneNumber,
                          hint: 'Enter Phone Number',
                          inputType: TextInputType.text,
                          inputValidator: _inputValidator,
                          controller: _phoneNumberController
                      ),

                      SizedBox(
                        height: devSize.height*0.01,
                      ),
                      Container(
                        width: devSize.width*0.85,
                        height: devSize.height*0.05,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(_method.toString() == SelectMethod.Email.toString() ?
                          'Enter the Email Address associated with your account.' :
                          'Enter the Phone Number associated with your account.', style: TextStyle(color: Colors.lightGreen, fontSize: 10,),textAlign: TextAlign.start, ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: devSize.height*0.02,
              ),
              if (_isLoading)
                CircularProgressIndicator()
              else
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => CreatePasswordScreen(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF8D0303),
                      ),
                      width: devSize.width*0.85,
                      height: devSize.height*0.06,
                      child:   Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: AutoSizeText('Next', style: TextStyle( color: Colors.white ,fontSize: 14,),textAlign: TextAlign.center, ),
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
