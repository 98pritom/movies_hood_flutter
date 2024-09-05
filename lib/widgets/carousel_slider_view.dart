import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_hood/constants.dart';

class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
  final dataList = snapshot.data as List;
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: dataList.length,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayCurve: Curves.easeIn,
          viewportFraction: 0.5,
          height: 300,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          enlargeCenterPage: true,
          pageSnapping: true,
        ),
        itemBuilder: (BuildContext context, int index, int itemIndex) {
          final data = dataList[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 300,
              width: 200,
              child: Image.network(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                  // 'https://image.tmdb.org/t/p/w500/jwoaKYVqPgYemFpaANL941EF94R.jpg'),
                  '${Constants.imagePath}${data.posterPath}'),
            ),
          );
        },
      ),
    );
  }
}

