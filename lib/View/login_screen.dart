import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/View/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_rendzio/View/login_with_email_screen.dart';
// import 'package:flutter_rendzio/View/signup_screen.dart';
import '../constants.dart';
import 'login_with_email_and_phone_screen.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final devSizeWidth = MediaQuery.of(context).size.width;
    final devSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                      height: 40,
                    ),
                    Container(
                      child:  Center(
                        child: Text('Login Now', style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                    Container(
                      width: devSizeWidth*0.7,
                      height: devSizeHeight*0.045,
                      child:  Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: AutoSizeText('Please login to continue using our app',
                            style: TextStyle(color: Colors.black, fontSize: 13,
                            fontWeight: FontWeight.w300,
                            ),textAlign: TextAlign.center, ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithEmailAndPassword()));
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => LoginWithEmailAndPassword(),
                            transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 0),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF8D0303),
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
                              child: AutoSizeText('Continue with Google',
                                style: TextStyle(color: kSelectItemColor, fontSize: 14,),textAlign: TextAlign.start, ),
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: devSizeWidth*0.9,
                  height: devSizeHeight*0.06,
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'By continuing you agree to Rendzio ',
                        style: TextStyle(color: kSelectItemColor, fontSize: 12,),
                        children: <TextSpan>[
                          TextSpan(text: 'Term of use', style: TextStyle(color: Color(0xFF8D0303), fontSize: 12,decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
                          TextSpan(text: ' and\nconfirming that you have read Rendzio ', style: TextStyle(color: kSelectItemColor, fontSize: 12,)),
                          TextSpan(text:'Privacy Policy', style: TextStyle(color: Color(0xFF8D0303), fontSize: 12,decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
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
                    //Navigator.push(context ,MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => SignUpScreen(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Dont have an account? ',
                        style: TextStyle(color: kSelectItemColor, fontSize: 13,),
                        children: <TextSpan>[
                          TextSpan(text: 'Sign up',
                              style: TextStyle(color: Color(0xFF8D0303), fontSize: 13,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context ,MaterialPageRoute(builder: (context)=> SignUpScreen()));
                              }),
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
