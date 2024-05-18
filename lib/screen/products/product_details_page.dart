import 'package:b2b_application/screen/products/product_color_count_item.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/custom_app_bar.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'product_wigits.dart/product_veriaties.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Column(
        children: [
          CustomAppBar(
            titile: "Product Details",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
                                Image.asset(
                                  "assets/images/product.png",
                                  height: 180,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "orginal phone i phone 13  smartphone For iphone",
                                                style: TextStyle(
                                                  color: kblack,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:
                                                      'UbuntuSans_SemiCondensed-Bold',
                                                ),
                                              ),
                                              Text(
                                                "Size:1 Pieces",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: 18,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    color: kpurple,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Text(
                                                  "In Stock",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: kwhite),
                                                ),
                                              ),
                                              h10,
                                              Row(
                                                children: [
                                                  Text(
                                                    "₹ 400.00",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                          //  Container(
                                          //   alignment: Alignment.center,
                                          //   height: 30,
                                          //   width: 80,
                                          //   decoration: BoxDecoration(
                                          //     color: kprimaryColor,
                                          //     borderRadius: BorderRadius.circular(10)
                                          //   ),
                                          //   child: Text("ADD",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: kwhite),),
                                          //  ) ,
                                          Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 12,
                                                backgroundColor: kprimaryColor,
                                                child: Icon(
                                                  Icons.add,
                                                  color: kwhite,
                                                ),
                                              ),
                                              h10,
                                              Text(
                                                "1",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              h10,
                                              CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor:
                                                      kprimaryColor,
                                                  child: Icon(Icons.remove,
                                                      color: Colors.white)),
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ),
                    h10,
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                         // isDismissible: true,
                           isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return ProductColorCountItem();
                          },
                        );
                      },
                      child: Container(
                        // height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Variations",
                                  style: productbigfont
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                            h10,
                            Text(
                              "Color (4)",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            h14,
                            SizedBox(
                              height: 55,
                              // width: 50,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: ProductVerites(),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    h10,
                    Text(
                      "Product Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    h10,
                    Text(
                      "Product reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "No Product reviews yet. see store",
                      style: TextStyle(fontSize: 14),
                    ),
                    h10,
                    Divider(
                      thickness: 0.55,
                    ),
                    h20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Store reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "4.6",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "/5.0  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Satisfied ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        //  scrollDirection:Axis.horizontal ,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product quality",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Row(
                                  children: [
                                    new LinearPercentIndicator(
                                      width: 120.0,
                                      lineHeight: 4.0,
                                      percent: 0.5,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.orange,
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                    h20,
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: kblack)),
                      child: Text(
                        "See all reviews",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    h20,
                    Container(
                      height: 200,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Store reviews",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                          ListTile(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return OrderConfidenceBottmSheet();
                                },
                              );
                            },
                            leading: Image.asset(
                              "assets/images/industry.png",
                              height: 30,
                            ),
                            title: Text(
                              "Verfied as custom Manufactur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              "Tailored customization and dedicated production",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderConfidenceBottmSheet extends StatelessWidget {
  const OrderConfidenceBottmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            h10,
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
