import 'package:b2b_application/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
                                       radius: 15,
                                       backgroundColor: kprimaryColor,
                                       child: Icon(Icons.add,color: kwhite,),
                                       );
  }
}