import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notificition_bar extends StatefulWidget {
  const notificition_bar({super.key});

  @override
  State<notificition_bar> createState() => _notificition_barState();
}

class _notificition_barState extends State<notificition_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Notification')),
    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField (
    decoration: InputDecoration(
    border: InputBorder.none,
    labelText: 'Enter Name',
    hintText: 'Enter Your Name'
    ),
    ),
    ),
    );
  }
}
// }
