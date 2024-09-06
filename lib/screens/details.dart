import 'package:flutter/material.dart';
import 'package:movies_hood/constants.dart';
import 'package:movies_hood/models/movies.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.movies,
  });

  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading: Container(
            //   height: 70,
            //   width: 70,
            //   // color: Colors.grey,
            //   margin: const EdgeInsets.only(
            //     top: 16,
            //     left: 16,
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.grey
            //   ),
            //   child: IconButton(
            //     style: IconButton.styleFrom(iconSize: 40),
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: const Icon(Icons.arrow_back),
            //   ),
            // ),
            // backgroundColor: Colors.grey,
            expandedHeight: 500,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                movies.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
              ),
              background: Image.network(
                '${Constants.imagePath}${movies.backdropPath}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    movies.overview,
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Release Date: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface,
                                ),
                              ),
                              Text(
                                movies.releaseDate,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Rating: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface,
                                ),
                              ),
                              Text(
                                '${movies.voteAverage.toStringAsFixed(1)}/10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
