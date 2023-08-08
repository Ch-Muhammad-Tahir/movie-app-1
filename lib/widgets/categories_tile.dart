import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;
  const CategoryTile({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: Material(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    categoryName,
                    style: const TextStyle(fontSize: 18),
                  )))),
    );
  }
}
