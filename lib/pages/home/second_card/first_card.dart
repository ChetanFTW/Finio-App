import 'package:flutter/material.dart';

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Page'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the first page!',
//
//           style: TextStyle(fontSize: 24),
//         ),
//
//       ),
//
//
//     );
//
//   }
// }

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Leads'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                // Handle lead generation logic here
                // For example, you can send data to a backend service
                // or navigate to a confirmation page.
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmationPage()));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}