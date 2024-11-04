import 'package:flutter/material.dart';

class DetailPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for Card 3'),
      ),
      body: Center(
        child: Text(
          'Details for Card 3',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
