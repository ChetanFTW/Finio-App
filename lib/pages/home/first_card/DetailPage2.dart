import 'package:flutter/material.dart';

class DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for Card 2'),
      ),
      body: Center(
        child: Text(
          'Details for Card 2',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
