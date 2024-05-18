import 'package:b2b_application/screen/products/product_wigits.dart/add_button.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/custom_app_bar.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        children: [
          CustomAppBar(
            titile: "Cart",
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h10,
                  Text(
                    "Deliver to",
                    style: productsmalllavel2,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: kdarkgrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                " Add shipping address",
                                style: productfontsbig,
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  h20,
                  Text("Guangzhou Wow infotech International Trade Co.,Ltd",
                      style: productfontsbig),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Estimated delivery by Jun 11-jun 14",
                          style: productsmalllavel6),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                  Text("Shipping fee: INR 2750.00", style: productsmalllavel7),
                  h18,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kbluegrey,
                            border: Border.all(width: 0.30, color: kkgrey)),
                        child: Image.asset("assets/images/product.png"),
                      ),
                      w10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Orignal phones s24 ultra SmartPhones For s24..",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Min order: 1 piece",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  h10,
                 ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                 // scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: kdarkgrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                         padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/product.png",
                                    height: 30,
                                  ),
                                  Text("16 Gold , 16g, 1TB,AU",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                              h10,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "INR 6824/piece",
                                      style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundColor: kprimaryColor,
                                          child: Icon(
                                            Icons.add,
                                            color: kwhite,
                                          ),
                                        ),
                                     w10,
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                       w10,
                                        CircleAvatar(
                                            radius: 12,
                                            backgroundColor: kprimaryColor,
                                            child: Icon(Icons.remove,
                                                color: Colors.white)),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                   );
                                  }
                  ),

                  Text("Add note to supplier",style: TextStyle(fontSize: 12,   decoration: TextDecoration.underline,),),
                  h10,

                    Text("Order Summary (2 item)",style: productfontsbig,),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kblack
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(                         children: [ 
                            Icon(Icons.error,color: kwhite,size: 18,),
                            w10,
                            Text("Please ",style: TextStyle(fontSize: 12,color: kwhite)),
                              Text("enter address",style: TextStyle(fontSize: 12,decorationColor: Colors.white,decoration: TextDecoration.underline,color: kwhite),),
                              Text("to view the exact fees.",style: TextStyle(fontSize: 12,color: kwhite),),
                           ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
