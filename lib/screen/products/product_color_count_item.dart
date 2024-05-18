import 'package:b2b_application/screen/products/cart_screen.dart';
import 'package:b2b_application/screen/products/product_details_page.dart';
import 'package:b2b_application/screen/products/product_wigits.dart/add_button.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProductColorCountItem extends StatelessWidget {
  const ProductColorCountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.1,
      decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                h10,
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 5,
                    width: 80,
                    decoration: BoxDecoration(
                      color: kbluegrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                h10,
                Center(
                  child: Text(
                    "Variations",
                    style: productbigfont,
                  ),
                ),
                h20,
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "product price",
                      style: productsmalllavel2,
                    )),
                SizedBox(
                  height: 10,
                ),
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
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "₹6,630.24",
                                    style: productbigfont,
                                  ),
                                  Text("100+pieces")
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
                h10,
                Text(
                  'Ram',
                  style: productsmalllavel6,
                ),
                h5,
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kbluegrey,
                              //  border: Border.all(width: 0.30,color: kkgrey)
                            ),
                            child: Text("16"),
                          ),
                        );
                      }),
                ),
                h10,
                Text(
                  '1TB',
                  style: productsmalllavel6,
                ),
              ],
            ),
            h10,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        //  scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: kbluegrey,
                                        //  border: Border.all(width: 0.30,color: kkgrey)
                                      ),
                                      child: Image.asset(
                                          "assets/images/product.png"),
                                    ),
                                    w2,
                                    w2,
                                    Text("UK & gold"),
                                  ],
                                ),
                                AddButton()
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  // height: 100,
                  decoration: BoxDecoration(
                      // color: kblack
                      ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("item(s) total (0 variations 0 items)"),
                          Text("₹8000"),
                        ],
                      ),
                      h10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping total"),
                          Text("₹0.0"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          Text("₹0.0"),
                        ],
                      ),
                      h5,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                
                                
                                  color: kwhite,
                                  borderRadius: BorderRadius.circular(10),
                                  border:Border.all(width: 1.9, color: kblack)),
                                  child: Text("Add To Cart",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: kblack),),
                            ),
                          ),
                          w20,
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                 Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: CartScreen()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: kprimaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                    
                                  ),
                                  child: Text("Start Order",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: kwhite),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
