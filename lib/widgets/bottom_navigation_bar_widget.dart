import 'package:flutter/material.dart';
import 'package:gramtora/screens/home.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;
  List<dynamic> pagesList = [Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onChangePage,
          fixedColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 26,
                  color: Colors.white,
                ),
                label: "HOME",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.white,
                ),
                label: "SEARCH",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 26,
                  color: Colors.white,
                ),
                label: "ADD POST",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 26,
                  color: Colors.white,
                ),
                label: "PROFILE",
                backgroundColor: Colors.black)
          ]),
    );
  }

  onChangePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
