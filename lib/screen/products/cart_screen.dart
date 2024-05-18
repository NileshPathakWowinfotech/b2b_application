import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/custom_app_bar.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(  
        children: [ 
      CustomAppBar(titile: "Cart",),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Deliver to",style: productsmalllavel2,),
            Container(
              height: 200,
              decoration: BoxDecoration(  
              color: kdarkgrey
              ),
            )
          ],
        ),
      )
        ],
      ),
      
    );
  }
}