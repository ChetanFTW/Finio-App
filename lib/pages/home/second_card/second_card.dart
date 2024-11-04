import 'package:flutter/material.dart';
import 'package:untitled/utils/app_images.dart';

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the second page!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Growth Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildCard(
              imagePath: AppImages.page_1, // Example URL
              title: 'Business Growth',
              subtitle: 'Learn how to scale your business effectively.',
              onTap: () {
                // Navigate or perform action when card is tapped
                // Example: Navigator.push(...);
                print('Tapped Business Growth');
              },
            ),
            SizedBox(height: 16.0),
            _buildCard(
              imagePath: AppImages.page_1, // Example URL
              title: 'Personal Development',
              subtitle: 'Tools and resources for self-improvement.',
              onTap: () {
                // Navigate or perform action when card is tapped
                // Example: Navigator.push(...);
                print('Tapped Personal Development');
              },
            ),
            SizedBox(height: 16.0),
            _buildCard(
              imagePath: AppImages.page_1, // Example URL
              title: 'Financial Freedom',
              subtitle: 'Achieve financial stability and independence.',
              onTap: () {
                // Navigate or perform action when card is tapped
                // Example: Navigator.push(...);
                print('Tapped Financial Freedom');
              },
            ),
            // Add more _buildCard as needed
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String imagePath,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
                height: 150.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onTap,
              child: Text('Explore'),
            ),
          ],
        ),
      ),
    );
  }
}
