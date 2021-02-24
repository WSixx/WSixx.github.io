import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  final String print1;
  final String print2;
  final String print3;

  const MyCarousel({this.print1, this.print2, this.print3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Carousel(
        images: [
          Image.asset(
            print1,
          ),
          Image.asset(
            print2,
          ),
          Image.asset(
            print3,
          ),
        ],
        dotSize: 3.0,
        dotSpacing: 15.0,
        dotColor: Colors.white,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.blue.withOpacity(0.5),
        borderRadius: true,
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
