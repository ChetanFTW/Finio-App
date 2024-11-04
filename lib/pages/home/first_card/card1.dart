import 'package:flutter/material.dart';
// import 'package:untitled/pages/home/first_card/DetailPage1.dart';
import 'package:untitled/utils/app_images.dart';
// import 'package:your_app_name/DetailPage1.dart'; // Replace with actual path

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DetailPage1(),
          //   ),
          // );
        },
        child: Container(
          width: 400.0,
          height: 400.0,
child: Image.asset(AppImages.first_card1,
  fit: BoxFit.fill,
),

          // decoration: const BoxDecoration(
          //   image: DecorationImage(image: AssetImage('asset/images/first_card1.png'))
          //   // shape: BoxShape.circle,
          //   // image: DecorationImage(
          //   //   fit: BoxFit.cover,
          //   //   image: AssetImage('asset/images/first_card1.png'), // Replace with actual image path
          //   // ),
          // ),
        ),


    // SizedBox(height: 8),
    // Text(
    // 'Card 1',
    // style: TextStyle(fontSize: 24.0),


          // child: Center(
          //
          //   child: Text(
          //     'Card 1',
          //     style: TextStyle(fontSize: 24.0),
          //   ),
          // ),
        ),
      // ),
    );
  }
}
