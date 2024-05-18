import 'dart:async';

import 'package:b2b_application/screen/home/home_screen.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/comman_button.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:page_transition/page_transition.dart';

class OTPScreenOTP extends StatefulWidget {
  OTPScreenOTP({super.key});

  @override
  State<OTPScreenOTP> createState() => _OTPScreenOTPState();
}

class _OTPScreenOTPState extends State<OTPScreenOTP> {
  int _secondsRemaining = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel(); // Stop the timer when it reaches 0
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kwhite,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // gradient: RadialGradient(
            //   colors: [ksecoundprimary, kprimaryColor],
            //   center: Alignment.topCenter,
            //   radius: 2.5,
            // ),
            ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    "assets/images/otp.png",
                    height: 200,
                  ),
                ),
                h30,
                Column(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Material(
                        elevation: 5,
                       borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(  
                      color: kwhite,
                      borderRadius: BorderRadius.circular(20)
                    ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              h10,
                              h10,
                            
                              Center(
                                child: Text("Verify Mobile Number",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: kprimaryColor,
                                      fontWeight: FontWeight.bold,
                                      // fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                                    )),
                              ),
                              h20,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                  child: Text(
                                    "We have sent a 4 digit code to",
                                    style: smallfontstyle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                  child: Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "+91-9730201227",
                                          style: numberstyle,
                                        ),
                                        Text(
                                          " Please enter it",
                                          style: smallfontstyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "                 To complete veri",
                                style: smallfontstyle,
                              ),
                              h30,
                              OtpTextField(
                                numberOfFields: 4,
                                fillColor: kwhite,
                                //set to true to show as box or false to show as dash
                                showFieldAsBox: true,
                                //runs when a code is typed in
                                onCodeChanged: (String code) {
                                  //handle validation or checks here
                                },
                                //runs when every textfield is filled
                                onSubmit: (String verificationCode) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Verification Code"),
                                          content: Text(
                                              'Code entered is $verificationCode'),
                                        );
                                      });
                                }, // end onSubmit
                              ),
                              h30,
                              _secondsRemaining == 0
                                  ? Center(
                                      child: Text(
                                      "Resend",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: kprimaryColor,
                                        fontWeight: FontWeight.bold,
                                        // fontFamily: 'UbuntuSans_SemiCondensed-Bold',
                                      ),
                                    ))
                                  : Center(
                                      child: Text(
                                      '00 : $_secondsRemaining',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kprimaryColor,
                                          fontSize: 19),
                                    )),
                              h10,
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 9),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.rightToLeft,
                                            child: HomeScreen()));
                                  },
                                  child: CommanButton(
                                    height: 45.0,
                                    width: 140.0,
                                    border: Border.all(color: kpurple),
                                    backgroundcolor: kpurple,
                                    style: buttonstyle,
                                    text: "Submit",
                                  ),
                                ),
                              )),
                              h30,
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Text(
                              //       "don't have an account?",
                              //       style: darkgreystyle,
                              //     ),
                              //     Text(
                              //       " Register",
                              //       style: purpulecolor,
                              //     ),
                              //   ],
                              // ),
                              // h20
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
