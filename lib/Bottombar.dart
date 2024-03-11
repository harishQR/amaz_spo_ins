import 'package:amazon/insta.dart';
import 'package:flutter/material.dart';
import 'package:amazon/Amazon.dart';
import 'package:amazon/spotify.dart';
import 'package:amazon/productview.dart';
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => bottomState();
}
class bottomState extends State<bottom> {
  int index = 0;
  List pages = [
    profpage(),
    spoi(),
    insta_dup(),
  ];
  void tap(indexs){
    setState(() {
      index = indexs;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: pages[index],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "amazon"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "spotify"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "insta"),
      ],
      currentIndex: index,
        onTap: tap,
      ),
    );
  }
}
