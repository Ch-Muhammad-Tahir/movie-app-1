import 'package:flutter/material.dart';
import '../widgets/custom_sizedbox.dart';
import '../widgets/categories_tile.dart';

class CustomCategories extends StatelessWidget {
  final List<String> categoryTypes;
  const CustomCategories({super.key, required this.categoryTypes});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CategoryTile(categoryName: categoryTypes[index]);
          },
          separatorBuilder: ((context, index) => const CustomSizedBox(
                width: 2,
              )),
          itemCount: categoryTypes.length),
    );
  }
}
