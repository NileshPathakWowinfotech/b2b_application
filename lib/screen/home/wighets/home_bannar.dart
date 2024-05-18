import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomeBannar extends StatelessWidget {
  const HomeBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 200,
            decoration: BoxDecoration(  
              color: kprimaryColor,
              borderRadius: BorderRadius.only( 
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
              ),
            
              
            ),
            child: SafeArea(
              child: Column(  
                children: [ 
                  ListTile(
                    title: Row(
                      children: [
                        
                        Text("B2b",style: appbarstyle,),
                        w2,
                         Text(" My Business",style: appbarstyle,),
                      ],
                    ),
                    leading: CircleAvatar(  
                      radius: 23,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    subtitle:  Text(" Wowinfotech, Nutan Sayli Society College Rd, Thatte Nagar, Nashik, Maharashtra ",style: allssmollstyle,),
                    
                  ),
                h10,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container( 
                      height: 45,
                      decoration: BoxDecoration(  
                        color: kwhite,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(  
                          children: [ 
                            Icon(Icons.search,color:  Colors.grey,),
                            w2,
                            Expanded(child: Text("Search Products And Brand",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
       
  }
}