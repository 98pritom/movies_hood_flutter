import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_hood/widgets/carousel_slider_view.dart';
import 'package:movies_hood/widgets/vertical_card_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'MoviesHood',
          style: TextStyle(fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Movies',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const CarouselSliderView(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Top Rating Movies',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const VerticalCardView(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Up Coming Movies',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const VerticalCardView(),
            ],
          ),
        ),
      ),
    );
  }
}


