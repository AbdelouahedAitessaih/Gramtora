import 'package:flutter/material.dart';
import 'package:gramtora/widgets/post_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gramtora",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: screenHeight * 0.15,
              ),
              const PostWidget()
            ],
          )
        ],
      ),
    );
  }
}
