import 'package:flutter/material.dart';
import 'package:untitled/utils/app_images.dart';

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gift card'),
//       ),
//       body: Center(
//         child: Text('Content for Page 1'),
//       ),
//     );
//   }
// }

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gifts & Hampers'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Padding around the GridView
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0, // Spacing between columns
          mainAxisSpacing: 60.0, // Spacing between rows
          children: <Widget>[
            _buildGiftCard(
              imagePath: AppImages.page_1,
              itemName: 'Chocolate Box',
              price: '\$25',
              onTap: () {
                // Implement navigation or action
                print('Tapped Chocolate Box');
              },
            ),
            _buildGiftCard(
              imagePath: AppImages.page_1,
              itemName: 'Flower Bouquet',
              price: '\$30',
              onTap: () {
                // Implement navigation or action
                print('Tapped Flower Bouquet');
              },
            ),
            _buildGiftCard(
              imagePath: AppImages.page_1,
              itemName: 'Fruit Basket',
              price: '\$40',
              onTap: () {
                // Implement navigation or action
                print('Tapped Fruit Basket');
              },
            ),
            _buildGiftCard(
              imagePath: AppImages.page_1,
              itemName: 'Gourmet Hamper',
              price: '\$50',
              onTap: () {
                // Implement navigation or action
                print('Tapped Gourmet Hamper');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGiftCard({
    required String imagePath,
    required String itemName,
    required String price,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemName,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Price: $price',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
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