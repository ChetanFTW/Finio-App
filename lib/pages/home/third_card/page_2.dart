import 'package:flutter/material.dart';

// class ServicePage_2 extends StatelessWidget {
//   final String title;
//
//   const ServicePage_2({Key? key, required this.title}) : super(key: key);
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

class ServicePage_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fund Management'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildFundCard(
              fundName: 'Retirement Fund',
              currentBalance: '\$50,000',
              investmentType: 'Mutual Funds',
              onTap: () {
                // Implement navigation or action
                print('Tapped Retirement Fund');
              },
            ),
            SizedBox(height: 16.0),
            _buildFundCard(
              fundName: 'Education Fund',
              currentBalance: '\$25,000',
              investmentType: 'Stocks',
              onTap: () {
                // Implement navigation or action
                print('Tapped Education Fund');
              },
            ),
            SizedBox(height: 16.0),
            _buildFundCard(
              fundName: 'Travel Fund',
              currentBalance: '\$10,000',
              investmentType: 'Bonds',
              onTap: () {
                // Implement navigation or action
                print('Tapped Travel Fund');
              },
            ),
            SizedBox(height: 16.0),
            _buildFundCard(
              fundName: 'Emergency Fund',
              currentBalance: '\$15,000',
              investmentType: 'Savings Account',
              onTap: () {
                // Implement navigation or action
                print('Tapped Emergency Fund');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFundCard({
    required String fundName,
    required String currentBalance,
    required String investmentType,
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
                fundName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Current Balance: $currentBalance',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Investment Type: $investmentType',
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