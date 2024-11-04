import 'package:flutter/material.dart';

class DetailPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for Card 1'),
      ),
      body: Center(
        child: Text(
          'Details for Card 1',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
