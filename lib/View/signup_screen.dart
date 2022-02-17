import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/View/login_screen.dart';
import 'package:black_history_gram/View/signup_with_email_phone_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final devSizeWidth = MediaQuery.of(context).size.width;
    final devSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: devSizeHeight*0.22,
                      width: devSizeWidth*0.5,
                      child: Container(
                        child: Image.asset('assets/rendzio.png', fit: BoxFit.scaleDown,),
                        width: devSizeWidth*0.5,
                        //height: devSizeHeight*0.2,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child:  Center(
                        child: Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                    Container(
                      width: devSizeWidth*0.7,
                      height: devSizeHeight*0.045,
                      child:  Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: AutoSizeText('Sign up to get started',
                            style: TextStyle(color: Colors.black, fontSize: 13,
                                fontWeight: FontWeight.w300)
                            ,textAlign: TextAlign.center, ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => SignUpWithEmailOrPhoneNumberScreen(),
                            transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 0),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF8D0303)
                        ),
                        width: devSizeWidth*0.8,
                        height: devSizeHeight*0.06,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                icon: Icon(Icons.person_outline_outlined,color: Colors.white,),
                                onPressed: () {
                                  // something goes here
                                }),
                            Center(
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: AutoSizeText('Use your email/phone number', style: TextStyle(color: Colors.white, fontSize: 14,),textAlign: TextAlign.center, ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: kSectionTileColor,
                        ),
                      ),
                      width: devSizeWidth*0.8,
                      height: devSizeHeight*0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: devSizeWidth*0.15,
                            child: Container(
                              child: Image.asset('assets/facebook.png', fit: BoxFit.scaleDown,),
                              width: devSizeWidth*0.05,
                              height: devSizeHeight*0.03,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: devSizeWidth*0.6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: AutoSizeText('Continue with facebook', style: TextStyle(color: kSelectItemColor, fontSize: 14,),textAlign: TextAlign.start, ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: kSectionTileColor,
                        ),
                      ),
                      width: devSizeWidth*0.8,
                      height: devSizeHeight*0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: devSizeWidth*0.15,
                            child: Container(
                              child: Image.asset('assets/google.png', fit: BoxFit.scaleDown,),
                              width: devSizeWidth*0.04,
                              height: devSizeHeight*0.03,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: devSizeWidth*0.6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: AutoSizeText('Continue with Google', style: TextStyle(color: kSelectItemColor, fontSize: 14,),textAlign: TextAlign.start, ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: devSizeWidth,
              height: devSizeHeight*0.08,
              decoration: BoxDecoration(
                color: kLightBlueColor,
              ),
              child:  Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => LoginScreen(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Already registered? ',
                        style: TextStyle(color: kSelectItemColor, fontSize: 13,),
                        children: <TextSpan>[
                          TextSpan(text: 'Sign in',
                            style: TextStyle(color: Color(0xFF8D0303), fontSize: 13,
                                decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginScreen(),
                                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                                  transitionDuration: Duration(milliseconds: 0),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
