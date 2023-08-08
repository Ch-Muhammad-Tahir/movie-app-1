import 'package:flutter/material.dart';
import '../views/movie_details_screen.dart';
import '../models/movie.dart';
import '../widgets/custom_sizedbox.dart';
import '../widgets/movie_view_tile.dart';

class CustomListViewBuilder extends StatelessWidget {
  final List<Movie> movies;
  const CustomListViewBuilder({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return MovieViewTile(
                imagePath: movies[index].moviePath,
                title: movies[index].movieName,
                onTab: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieDetailsView()),
                  );
                },
              );
            },
            separatorBuilder: (constext, index) {
              return const CustomSizedBox(
                width: 0,
              );
            },
            itemCount: movies.length));
  }
}
