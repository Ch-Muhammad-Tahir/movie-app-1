import 'package:flutter/material.dart';
import '../widgets/custom_sizedbox.dart';

class MovieViewTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTab;
  const MovieViewTile(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(3),
      child: Material(
        // elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onTab,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                Container(
                  width: width / 2.8,
                  height: height / 4.5,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(imagePath),
                        fit: BoxFit.fill,
                      )),
                  // child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(10),
                  //     child: Image.network(imagePath)),
                ),
                const CustomSizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
