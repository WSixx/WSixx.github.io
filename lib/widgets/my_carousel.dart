import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  final String print1;
  final String print2;
  final String print3;

  const MyCarousel({this.print1, this.print2, this.print3});

  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset(
          widget.print1,
        ),
        Image.asset(
          widget.print2,
        ),
        Image.asset(
          widget.print3,
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 1,
      ),
    );
  }
}
