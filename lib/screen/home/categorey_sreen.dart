import 'package:b2b_application/screen/home/wighets/categorey_expanded_list.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/custom_app_bar.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class CategoreyScreen extends StatelessWidget {
  const CategoreyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(  
        children: [ 
        CustomAppBar(titile: "Categories",),
       Expanded(child:GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 9.0,
      ),
      itemCount:10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CategoreyExpandedList(),
        );}) )
        ],
      )
    );
  }
}