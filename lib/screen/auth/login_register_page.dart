import 'package:b2b_application/screen/auth/login_screen.dart';
import 'package:b2b_application/screen/auth/registraion_screen.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/comman_button.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';


class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(  
            gradient: RadialGradient(
      colors: [ksecoundprimary,kprimaryColor],
      
      center: Alignment.topCenter,
      radius: 2.5,
    ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimateList(interval: 400.ms, children: [
                    Center(child: Text("B2B",style: bigfont,)),
                    Center(
                      child: Container(
                        
                          child: Image.asset(
                        "assets/images/b2b.png",
                        height: 300,
                      )),
                    ),
                    Text(
                      "Business App",
                      style: bigfont,
                    ),
                    Text(
                      "Everything you need is in one place",
                      style: rgiserfonts,
                    ),
                    h10,
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.when an unknown printer took a galley",
                      style: greyStyle,
                    ),
                    h10,
                    InkWell(
                      onTap: (){
                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: LoginScreen()));
                      },
                      child: CommanButton(
                        text: "Login",
                        style: buttonstyle,
                        backgroundcolor: Colors.purple,
                        border: Border.all(color:  Colors.purple),
                      ),
                    ),
                    h20,
                    InkWell(
                      onTap: (){
                         Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: RegtrationScreen()));
                      },
                      child: CommanButton(
                        text: "Register",
                        style: blackbuttonstyle,
                        backgroundcolor: kwhite,
                        border: Border.all(color: kblack, width: 1.4),
                      ),
                    ),
                    h40
                  ]))),
        ));
  }
 
}
