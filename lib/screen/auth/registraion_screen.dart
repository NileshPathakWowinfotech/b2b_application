import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/comman_button.dart';
import 'package:b2b_application/utils/comman_text_fileds.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegtrationScreen extends StatelessWidget {
  const RegtrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
      child: Scaffold(
        //backgroundColor: kpink,
        appBar: AppBar(  
          backgroundColor: kprimaryColor,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: kwhite,)),
          title: Text("Regstration ",style: appbarstyle,),
        ),
        body:  Column(
          children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [ 
                      h10,
                    h10,
                          CommanTextFileds(
                            hintname:"Enter  Name" ,
                            inputype: TextInputType.name,
                          ),
                           h20,
                          CommanTextFileds(
                            hintname:"Last Name" ,
                            inputype: TextInputType.name,
                          ),
                            h20,
                          CommanTextFileds(
                            hintname:"Email Id" ,
                            inputype: TextInputType.name,
                          ),
                         h20,
                             CommanTextFileds(
                            hintname:"Address" ,
                            inputype: TextInputType.name,
                          ),
                             h20,
                             CommanTextFileds(
                            hintname:"Pin Code" ,
                            inputype: TextInputType.name,
                          ),
                            h20,
                             CommanTextFileds(
                            hintname:"GST Number" ,
                            inputype: TextInputType.name,
                          ),
                  ],
                ),
              ),
            ),
          ),
          CommanButton(border:Border.all(color:kpurple ), backgroundcolor: kpurple, style: buttonstyle,text: "Submit",),
          ],
        ),
      ),
    );

  }
}