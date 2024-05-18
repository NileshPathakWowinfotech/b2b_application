import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.titile});
  final titile;

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 120,
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(25),
              color: kprimaryColor,
              
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [ 
                    h10,
                     h10,
                    Row( 
                      children: [ 
                        w10,
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: kwhite,)),
                        w10,
                        Text(titile,style: appbarstyle,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}