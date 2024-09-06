import 'package:flutter/material.dart';
import 'package:movies_hood/constants.dart';
import 'package:movies_hood/screens/details.dart';

class VerticalCardView extends StatelessWidget {
  const VerticalCardView({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    final dataList = snapshot.data as List;
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final data = dataList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(movies: data),
                    ),
                  );
                },
                child: SizedBox(
                  height: 220,
                  width: 150,
                  child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    '${Constants.imagePath}${data.posterPath}',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
