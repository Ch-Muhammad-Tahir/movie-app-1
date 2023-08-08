import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/movies_categories_type.dart';
import 'package:movie_app/widgets/custom_categories_list_view.dart';
import 'package:movie_app/widgets/custome_post_list_view_bulder.dart';
import '../utils/movies_address.dart';
import '../widgets/categories_name.dart';
import '../widgets/custom_sizedbox.dart';
import '../widgets/profile_tile.dart';
import '../widgets/search_bar.dart';

class MyHomeSreen extends StatelessWidget {
  MyHomeSreen({super.key});

  final List<Movie> movies = [
    Movie(
        movieName: "Thor Ragnarok",
        discription: MoviesAddress.discription,
        moviePath: MoviesAddress.thorRagnarok),
    Movie(
        movieName: "Civil War",
        discription: MoviesAddress.discription,
        moviePath: MoviesAddress.civiWar),
    Movie(
        movieName: "Avengers: End Game",
        discription: MoviesAddress.discription,
        moviePath: MoviesAddress.avengersEndGame),
    Movie(
        movieName: "Thor Love and Thunder",
        discription: MoviesAddress.discription,
        moviePath: MoviesAddress.thorLoveAndThunder),
    Movie(
        movieName: "Stranger Things",
        discription: MoviesAddress.discription,
        moviePath: MoviesAddress.strangerThings)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(title: const Text("Theme data")),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileTile(),
                const CustomSizedBox(
                  height: 20,
                ),
                const CustomSearchBar(),
                const CustomSizedBox(
                  height: 20,
                ),
                const CategoriesName(categoryName: "Categories Name "),
                const CustomSizedBox(
                  height: 10,
                ),
                CustomCategories(categoryTypes: MovieCategory.categories),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    children: [
                      const CategoriesName(categoryName: "Latest Movies"),
                      CustomListViewBuilder(movies: movies),
                      const CategoriesName(categoryName: "Favorite Movies "),
                      CustomListViewBuilder(movies: movies),
                      const CategoriesName(categoryName: "Old Name "),
                      CustomListViewBuilder(movies: movies),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
