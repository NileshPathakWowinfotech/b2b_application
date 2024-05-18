import 'package:b2b_application/screen/home/categorey_sreen.dart';
import 'package:b2b_application/screen/home/home_screen.dart';
import 'package:b2b_application/screen/home/wighets/categorey_expanded_list.dart';
import 'package:b2b_application/screen/home/wighets/home_bannar.dart';
import 'package:b2b_application/screen/home/wighets/slider_images.dart';
import 'package:b2b_application/screen/products/product_details_page.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home1Screen extends StatelessWidget {
  const Home1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Column(  
          children: [ 
        
            HomeBannar(),
            SliderImages(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Text("Deals and Offers",style: productfontsbig,),
                   Text("See All",style: productfontsbsmall,),
                  
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
               shrinkWrap: true,
               scrollDirection:Axis.horizontal ,
                itemCount: 5, 
                itemBuilder: (context, index) {         
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: InkWell(
                    onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: ProductDetailsScreen()));
                    },
                    child: Material(
                     elevation: 2,
                       borderRadius: BorderRadius.circular(5),
                      child: Container(
                             // height: 200,
                             width: 180,
                             decoration: BoxDecoration(  
                              color: kwhite,
                               borderRadius: BorderRadius.circular(5)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column( 
                               
                                 children: [ 
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Align(
                                         alignment: Alignment.centerLeft,
                                         child: Container( 
                                           //margin: EdgeInsets.all(),
                                            alignment: Alignment.center,
                                           height: 20,
                                           width: 56,
                                           decoration: BoxDecoration(  
                                             color: kpurple,
                                             borderRadius: BorderRadius.circular(12)
                                           ),
                                           child: Text("70% off",style: productfontsbsmallkwhite,),
                                       
                                         ),
                                       ),
                                       Icon(Icons.favorite,color: Colors.red,)
                                     ],
                                   ),
                                   h5,
                                  Column( 
                                   crossAxisAlignment: CrossAxisAlignment.start, 
                                   children: [ 
                                      Center(
                                        child: ClipRRect(
                                                                    borderRadius: BorderRadius.circular(5),
                                                                    child: Image.asset("assets/images/product.png",height: 100,)),
                                      ),
                                     Text("orginal phone i phone 13  smartphone For iphone s24 16.5",style:productfontstyle ,),
                                     Row(
                                       children: [
                                         Text("Size :",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, ),),
                                         Text("1 pieces",style:productfontstyle),
                                       ],
                                     ),
                                     h5,
                                    Row(  
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [ 
                                       Column(
                                         children: [
                                           Text("₹ 15000.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, )),
                                           Text("₹ 50000.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey ,  decoration: TextDecoration.lineThrough,)),
                                         ],
                                       ),
                                       CircleAvatar(
                                       radius: 17,
                                       backgroundColor: kprimaryColor,
                                       child: Icon(Icons.add,color: kwhite,),
                                       )
                                     ],
                                    ) 
                                   ],
                                  )
                                 ],
                               ),
                             ),
                            ),
                            
                    ),
                  ),
                );
                        }),
            ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Text("Shop by Section",style: productfontsbig,),
                   InkWell(
                    onTap: (){
                        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: CategoreyScreen()));
                    },
                    child: Text("See All",style: productfontsbsmall,)),
                  
                ],
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
               shrinkWrap: true,
               scrollDirection:Axis.horizontal ,
                itemCount: 5, 
                itemBuilder: (context, index) {  return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoreyExpandedList()
                );
                }
              ),
            )
        
          ],
        ),
      ),

    );
  }
}