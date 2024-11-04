// Import required libraries
import 'package:flutter/material.dart';
// import 'package:untitled/pages/first_page.dart';
import 'package:untitled/pages/intro.dart';

void main() {
  runApp(MyApp());


}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,   //removing top right debug tag
      // home: first_page(),
      home: intro(),


      

    );
  }
}


