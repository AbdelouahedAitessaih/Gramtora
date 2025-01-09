import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/insta.jpg"),
            ),
            SizedBox(width: screenWidth * 0.05),
            Text(
              "Name",
              style: TextStyle(fontSize: 22),
            )
          ],
        )
      ],
    );
  }
}
