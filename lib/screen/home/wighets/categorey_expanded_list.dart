import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class CategoreyExpandedList extends StatelessWidget {
  const CategoreyExpandedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.75, color: kprimaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          h10,
          CircleAvatar(
              radius: 40,
              child: Image.asset(
                "assets/images/electroic.png",
                fit: BoxFit.cover,
              )),
          h10,
          Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                  child: Text(
                "Electronics ",
                style: productfontsbig,
              )),
            ),
          )
        ],
      ),
    );
  }
}
