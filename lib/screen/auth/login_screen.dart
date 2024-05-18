import 'package:b2b_application/screen/auth/otp_screen.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/comman_button.dart';

import 'package:b2b_application/utils/comman_text_fileds.dart';

import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import '../../utils/contrent.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isvisibale = true;
  void _toggleVisibility() {
    setState(() {
      isvisibale = !isvisibale;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kwhite,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screensize.height / 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/login.png",
                    height: 250,
                  ),
                ),
                h30,
                 
                        
                Material(
                    elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(  
                      color: kwhite,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   "Login",
                          //   style: bigfont,
                          // ),
                          // Container(
                          //   height: 5,
                          //   width: 80,
                          //   decoration: BoxDecoration(color: ksecoundprimary),
                          // ),
                          // h10,
                          // Text(
                          //   "Login to continue using the app",
                          //   style: greyStyle,
                          // ),
                           Center(
                              child: Text(
                            "Login",
                            style: bigfont,
                          )),
                        
                          h20,
                          Text(
                            "Enter Your Mobile Number ",
                            style: TextStyle(
                                   color:kkgrey,
                              fontSize: 15,
                              // fontWeight: FontWeight.w200,
                              fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                            ),
                          ),
                          h10,
                          CommanTextFileds(
                            hintname: "Enter Your Mobile Number ",
                            inputype: TextInputType.name,
                          ),
                          h20,
                          h5,
                          Text(
                            "Enter Your Passwold Number ",
                            style: TextStyle(
                              color:kkgrey,
                              fontSize: 15,
                              // fontWeight: FontWeight.w500,
                              fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                            ),
                          ),
                          h10,
                          CommanTextFileds(
                            hintname: "Enter Your Passwold Number",
                            inputype: TextInputType.name,
                          ),
                          h5,
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot  password?",
                                style: TextStyle(
                                  color: kpurple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                                ),
                              )),
                          h25,
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: OTPScreenOTP()));
                              },
                              child: CommanButton(
                                height: 50.0,
                                width: 150.0,
                                text: "Login",
                                style: buttonstyle,
                                backgroundcolor: kpurple,
                                border: Border.all(
                                  color: kpurple,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 16,
                          ),

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have account?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'UbuntuSans_SemiCondensed-Bold'),
                                ),
                                Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                                      color: kpurple),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
