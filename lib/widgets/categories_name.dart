import 'package:flutter/material.dart';

class CategoriesName extends StatelessWidget {
  final String categoryName;
  const CategoriesName({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: const TextStyle(fontSize: 25),
          ),
          Text(
            "view all",
            style: TextStyle(color: Colors.orange.shade700),
          )
        ],
      ),
    );
  }
}
