import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 10,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayCurve: Curves.easeIn,
          viewportFraction: 0.5,
          height: 300,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          enlargeCenterPage: true,
        ),
        itemBuilder:
            (BuildContext context, int index, int realIndex) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 300,
              width: 200,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}