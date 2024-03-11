import 'package:amazon/spotify.dart';
import 'package:flutter/material.dart';
import 'package:amazon/Amazon.dart';
import 'package:amazon/productview.dart';
// import 'package:amazon/spotify_prac.dart';
import 'package:amazon/Bottombar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottom(),
    );
  }
}


