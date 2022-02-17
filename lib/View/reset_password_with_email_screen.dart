import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/input_validator.dart';
import 'package:black_history_gram/View/password_screen.dart';
import 'package:black_history_gram/View/reset_password_verification_code.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
//import 'forget_password_reset_with_phone_number.dart';
enum ResetPasswordBy {PhoneNumber, Email}
enum SelectMethod {  SMS, Call }
class ResetPasswordWithEmailScreen extends StatefulWidget {
  @override
  _ResetPasswordWithEmailScreenState createState() => _ResetPasswordWithEmailScreenState();
}

class _ResetPasswordWithEmailScreenState extends State<ResetPasswordWithEmailScreen> {
  SelectMethod _method = SelectMethod.Call;
  ResetPasswordBy _resetPasswordBy = ResetPasswordBy.Email;
  var _focusNode = new FocusNode();
  String hint1 = 'Enter Email Address';
  String hint2 = 'Enter Phone Number';
  InputValidator _inputValidator = InputValidator();
  TextEditingController _controller = TextEditingController();
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

  bool _isNumeric(String result) {
    if (result == null) {
      return false;
    }
    return double.tryParse(result) != null;
  }
  String validate(String input){
    if(_resetPasswordBy.toString() == ResetPasswordBy.PhoneNumber.toString() && input.isEmpty)
      return 'Enter Your Phone Number';
    if(_resetPasswordBy.toString() == ResetPasswordBy.Email.toString() && input.isEmpty)
      return 'Enter Your Email Address';
    bool isNumber = _isNumeric(input);
    if(isNumber == true)
    {
      return _inputValidator.validateMobile(input);
    }
    else
    {
      return _inputValidator.validateEmail(input);
    }
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
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => PasswordScreen(),
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
                  child: Text('Forget password', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.left, ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: devSize.width,
                height: devSize.height*0.05,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: AutoSizeText('Enter the phone number or email associated with your email account and we will send a code to reset your password.',
                    style: TextStyle(color: kSelectItemColor, fontSize: 10,
                    fontWeight: FontWeight.w300,
                    ),textAlign: TextAlign.start, ),
                ),
              ),

              SizedBox(
                height: devSize.height*0.03,
              ),

              Container(
                width: devSize.width*0.85,
                height: devSize.height*0.04,
                child: Text('Reset Password By :', style: TextStyle(color: kDarkButtonBg, fontSize: 14,
                    fontWeight: FontWeight.bold),),
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
                        value: ResetPasswordBy.PhoneNumber,
                        groupValue: _resetPasswordBy,
                        onChanged: (ResetPasswordBy value) {
                          setState(() {
                            _resetPasswordBy = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: devSize.width*0.3,
                      child: const Text('Phone Number', style: TextStyle(fontSize: 13,),),
                    ),
                    SizedBox(
                      width: devSize.width*0.08,
                    ),

                    Container(
                      width: devSize.width*0.08,
                      child: Radio(
                        activeColor: Colors.lime,
                        value: ResetPasswordBy.Email,
                        groupValue: _resetPasswordBy,
                        onChanged: (ResetPasswordBy value) {
                          setState(() {
                            _resetPasswordBy = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: devSize.width*0.12,
                      child: const Text('Email',style: TextStyle(fontSize: 13,),),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: devSize.height*0.02,
              ),
              _resetPasswordBy.toString() == ResetPasswordBy.Email.toString() ?
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Container(
                      width: devSize.width*0.85,
                      child: SizedBox(
                        width: devSize.width*0.85,
                        child: TextFormField(
                          focusNode: _focusNode,
                          decoration: InputDecoration(
                            hintText: hint1,
                            hintStyle: TextStyle(color: kFormInputColor, fontSize: 13),
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
                          validator: _inputValidator.validateEmail,
                          controller: _controller,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  )
              ) :
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Container(
                      width: devSize.width*0.85,
                      child: SizedBox(
                        width: devSize.width*0.85,
                        child: TextFormField(
                          focusNode: _focusNode,
                          decoration: InputDecoration(
                            hintText: hint2,
                            hintStyle: TextStyle(color: kFormInputColor, fontSize: 13),
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
                          validator: _inputValidator.validateMobile,
                          controller: _controller,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(
                height: devSize.height*0.03,
              ),
              _resetPasswordBy.toString() == ResetPasswordBy.PhoneNumber.toString() ?
              Container(
                height: devSize.height*0.13,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: devSize.width*0.85,
                        height: devSize.height*0.04,
                        child: Text('Select Method :', style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        height: devSize.height*0.05,
                        width: devSize.width*0.75,
                        child: Row(
                          children: [
                            Container(
                              width: devSize.width*0.1,
                              child: Radio(
                                activeColor: Colors.lime,
                                value: SelectMethod.Call,
                                groupValue: _method,
                                onChanged: (SelectMethod value) {
                                  setState(() {
                                    _method = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: devSize.width*0.1,
                              child: const Text('Call', style: TextStyle(fontSize: 13,),),
                            ),
                            SizedBox(
                              width: devSize.width*0.25,
                            ),

                            Container(
                              width: devSize.width*0.1,
                              child: Radio(
                                activeColor: Colors.lime,
                                value: SelectMethod.SMS,
                                groupValue: _method,
                                onChanged: (SelectMethod value) {
                                  setState(() {
                                    _method = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: devSize.width*0.1,
                              child: const Text('SMS', style: TextStyle(fontSize: 13,),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ) :
              SizedBox(
                height: devSize.height*0.03,
              ),
              if (_isLoading)
                CircularProgressIndicator()
              else
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => PasswordVerificationScreen(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                    // if (!_formKey.currentState.validate()) {
                    //   // Invalid!
                    //   return;
                    // }
                    // _formKey.currentState.save();
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
                            child: AutoSizeText(_resetPasswordBy.toString() == ResetPasswordBy.Email.toString()  ? 'Send Reset Link' : 'Send Reset Code', style: TextStyle( color: _focusNode.hasFocus ? Colors.white : kDarkGreyColor, fontSize: 14,),textAlign: TextAlign.center, ),
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
