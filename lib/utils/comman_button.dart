import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class CommanButton extends StatelessWidget {
  const CommanButton({super.key, this.text, required this.border, required this.backgroundcolor, required this.style, this.width, this.height});
  final text;
  final TextStyle style;
  final Border border; 
  final Color backgroundcolor;
  final width;
  final height;



  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Material (
              elevation: 3,
               borderRadius: BorderRadius.circular(20),
                child: Container( 
                  alignment: Alignment.center,
                  height: height,
                  width:width ,
                  decoration: BoxDecoration( 
                    border: border,
                    borderRadius: BorderRadius.circular(20),
                    color: backgroundcolor
                  ),
                  child: Text(text,style: style,),
                ),
              ),
    );
  }
}