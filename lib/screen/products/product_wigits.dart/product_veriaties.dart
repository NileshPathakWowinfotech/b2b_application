import 'package:b2b_application/utils/color.dart';
import 'package:flutter/cupertino.dart';

class ProductVerites extends StatelessWidget {
  const ProductVerites({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container( 
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(  
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: kprimaryColor),
                          
                            ),
                            child: Image.asset("assets/images/product.png"),
                          );
  }
}