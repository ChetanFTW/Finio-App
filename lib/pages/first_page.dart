import 'package:flutter/material.dart';
import 'package:untitled/pages/second_page.dart';
// import 'package:untitled/pages/second_page.dart';
// import 'package:flutter/pages/';

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("L2M"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Next"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => secont_page(),
            ),
            );
          },
        ),
      ),
    );
  }
}


