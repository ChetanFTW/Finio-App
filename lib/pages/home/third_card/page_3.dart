import 'package:flutter/material.dart';

// class ServicePage_3 extends StatelessWidget {
//   final String title;
//
//   const ServicePage_3({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('$title Page Content'),
//       ),
//     );
//   }
// }


class ServicePage_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asset Management'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildAssetCard(
              assetName: 'Real Estate',
              currentValue: '\$500,000',
              location: 'City Center',
              onTap: () {
                // Implement navigation or action
                print('Tapped Real Estate');
              },
            ),
            SizedBox(height: 16.0),
            _buildAssetCard(
              assetName: 'Stocks Portfolio',
              currentValue: '\$250,000',
              location: 'Global Stocks',
              onTap: () {
                // Implement navigation or action
                print('Tapped Stocks Portfolio');
              },
            ),
            SizedBox(height: 16.0),
            _buildAssetCard(
              assetName: 'Cryptocurrency',
              currentValue: '\$100,000',
              location: 'Bitcoin, Ethereum',
              onTap: () {
                // Implement navigation or action
                print('Tapped Cryptocurrency');
              },
            ),
            SizedBox(height: 16.0),
            _buildAssetCard(
              assetName: 'Art Collection',
              currentValue: '\$150,000',
              location: 'Modern Art Pieces',
              onTap: () {
                // Implement navigation or action
                print('Tapped Art Collection');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssetCard({
    required String assetName,
    required String currentValue,
    required String location,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                assetName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Current Value: $currentValue',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Location/Type: $location',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}