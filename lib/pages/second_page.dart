import 'package:flutter/material.dart';
import 'package:untitled/pages/third_page.dart';

class secont_page extends StatefulWidget {
  const secont_page({super.key});

  @override
  State<secont_page> createState() => _secont_pageState();
}

class _secont_pageState extends State<secont_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("L2M"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Next"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => third_page(),
            ),
            );
          },
        ),
      ),);
  }
}
