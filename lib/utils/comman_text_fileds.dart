import 'package:b2b_application/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CommanTextFileds extends StatelessWidget {
  CommanTextFileds({super.key, this.hintname, required this.inputype});
  final hintname;

  final TextInputType inputype;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
       borderRadius: BorderRadius.circular(15),
      child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: HexColor('#F4F5F8'),
            //border: Border.all(width: 2, color: HexColor('#E7E7E7'),)
           
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: TextFormField(
                style:TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: kblack),
                keyboardType: inputype,
                decoration: InputDecoration(
                  hintText: hintname,
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color:kkgrey,),
                  //     suffixIcon:icon
                ),
              ))),
    );
  }
}
