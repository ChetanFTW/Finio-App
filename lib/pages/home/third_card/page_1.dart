import 'package:flutter/material.dart';
// import 'package:untitled/pages/home/third_card/widget_1.dart';

// class ServicePage_1 extends StatelessWidget {
//   final String title;
//
//   const ServicePage_1({Key? key, required this.title}) : super(key: key);
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

class ServicePage_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banking Services'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildServiceCard(
              icon: Icons.account_balance,
              title: 'Account Summary',
              subtitle: 'View your account details',
              onTap: () {
                // Implement navigation or action
                print('Tapped Account Summary');
              },
            ),
            SizedBox(height: 16.0),
            _buildServiceCard(
              icon: Icons.money,
              title: 'Transfer Money',
              subtitle: 'Send money to others',
              onTap: () {
                // Implement navigation or action
                print('Tapped Transfer Money');
              },
            ),
            SizedBox(height: 16.0),
            _buildServiceCard(
              icon: Icons.payment,
              title: 'Pay Bills',
              subtitle: 'Pay your bills securely',
              onTap: () {
                // Implement navigation or action
                print('Tapped Pay Bills');
              },
            ),
            SizedBox(height: 16.0),
            _buildServiceCard(
              icon: Icons.history,
              title: 'Transaction History',
              subtitle: 'View your transaction history',
              onTap: () {
                // Implement navigation or action
                print('Tapped Transaction History');
              },
            ),
            SizedBox(height: 16.0),
            _buildServiceCard(
              icon: Icons.settings,
              title: 'Settings',
              subtitle: 'Manage your account settings',
              onTap: () {
                // Implement navigation or action
                print('Tapped Settings');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              // Icon(icon, size: 48.0, color: Theme.of(context).primaryColor),
              SizedBox(width: 16.0),
              Expanded(
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
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}