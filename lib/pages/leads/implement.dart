import 'package:flutter/material.dart';
import 'package:untitled/pages/leads/HorizontalCard.dart';
import 'package:untitled/pages/leads/Page%201.dart';
import 'package:untitled/pages/leads/Page%202.dart';
import 'package:untitled/pages/leads/Page%203.dart';
// import 'page1.dart'; // Import your page files
// import 'page2.dart'; // Import your page files
// import 'page3.dart'; // Import your page files
// import 'horizontal_card.dart'; // Import your HorizontalCard widget

class LeadsPage extends StatelessWidget {
  const LeadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Sales'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Rewards & Earning',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HorizontalCard(
                    title: 'Card 1',
                    icon: Icons.card_giftcard,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                  ),
                  SizedBox(width: 16),
                  HorizontalCard(
                    title: 'Card 2',
                    icon: Icons.monetization_on,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                  ),
                  SizedBox(width: 16),
                  HorizontalCard(
                    title: 'Card 3',
                    icon: Icons.star,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LeadsPage(),
  ));
}
