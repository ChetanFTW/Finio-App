import 'package:flutter/material.dart';

// class Aboutpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // back buttorn
//       // appBar: AppBar(
//       //   title: Text('Profile'),
//       // ),
//       body: Center(
//         child: Text(
//           'Profile Page Content',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

class Aboutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('asset/images/page_1.png'),
          ),
          SizedBox(height: 20),
          Text(
            'hey',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Finance Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('info@rapidtech.dev'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+1 123 456 7890'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Jaipur, Raj'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.web),
                  title: Text('www.hey.com'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Finance empowers individuals by enabling effective budgeting, access to credit, and investment opportunities, fostering economic stability and personal prosperity globally. It enhances financial literacy, supports entrepreneurship, and mitigates risks, ensuring inclusive access to economic growth and retirement security.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 20),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text(
          //         'Skills',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       SizedBox(height: 10),
          //       Wrap(
          //         spacing: 8,
          //         children: <Widget>[
          //           Chip(label: Text('Flutter')),
          //           Chip(label: Text('Dart')),
          //           Chip(label: Text('Firebase')),
          //           Chip(label: Text('UI Design')),
          //           Chip(label: Text('Responsive Design')),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Interests',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    Chip(label: Text('Lone')),
                    Chip(label: Text('Mutual Fund')),
                    Chip(label: Text('Insurence')),
                    Chip(label: Text('Creditcard')),
                    Chip(label: Text('Stocks')),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}