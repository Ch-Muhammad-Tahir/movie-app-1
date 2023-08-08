import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Welcome Joke ✌️ "),
              Text(
                "Let's relax and watch a Movie! ",
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
          )
        ],
      ),
    );
  }
}
