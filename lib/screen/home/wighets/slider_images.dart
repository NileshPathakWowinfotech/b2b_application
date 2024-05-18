import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImages extends StatelessWidget {
   SliderImages({super.key});
    final List<String> imageUrls = [
    'https://img.freepik.com/premium-vector/abstract-colorful-sales-banner_23-2148335698.jpg?w=740',
    'https://img.freepik.com/free-vector/colorful-origami-sale-banner_52683-320.jpg?w=740&t=st=1715664024~exp=1715664624~hmac=989c2ae691cc2522839397d992d08d5e3ba4346e64c510c9837d5c32474b8ad3',
    'https://img.freepik.com/premium-photo/young-woman-using-mobile-phone-against-yellow-background_1048944-8729935.jpg?w=740',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          aspectRatio: 15/9,
          viewportFraction: 1.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.linear,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: imageUrls.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      );
  }
}