import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
          // textAlign: TextAlign.center,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Search movie ...',
              hintStyle: TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
              fillColor: Colors.white10,
              prefixIcon: const Icon(Icons.search_outlined))),
    );
  }
}
