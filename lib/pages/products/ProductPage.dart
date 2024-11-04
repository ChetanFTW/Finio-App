import 'package:flutter/material.dart';
import 'package:untitled/pages/home/third_card/page_1.dart';
import 'package:untitled/pages/home/third_card/page_2.dart';
import 'package:untitled/pages/home/third_card/page_3.dart';
import 'package:untitled/pages/home/third_card/widget_1.dart';

// class ProductPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // back buttorn
//       // appBar: AppBar(
//       //   title: Text('Product'),
//       // ),
//       // body: Center(
//       //   child: Text(
//       //     'Product Page Content',
//       //     style: TextStyle(fontSize: 24),
//       //   ),
//       // ),
//
//       body: Column(
//         children: [
//           // SizedBox(height: 20,width: 20,),
//           Card(
//
//             color: Colors.blue[100],
//             // elevation: 1,
//
//             child: Text("hii my came is mt"),
//
//           ),
//           SizedBox(height: 20, width: 20,)
//         ],
//       ),
//     );
//   }
// }


// class ProductPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 330,
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.blueAccent,
//             Colors.lightBlueAccent,
//           ],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 Icon(
//                   Icons.shopping_cart,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//             Text(
//               'Debit Card',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       'PRICE',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         letterSpacing: 1,
//                       ),
//                     ),
//                     Text(
//                       '\$199.99',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       'STOCK',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         letterSpacing: 1,
//                       ),
//                     ),
//                     Text(
//                       'In Stock',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Container(
            // width: 350,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlueAccent,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    'Debit Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'PRICE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            '\$199.99',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'STOCK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'In Stock',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],

                      ),

                    ],

                  ),
                ],

              ),

            ),

          ),
      Column(
        children: [
          ServiceCard(
            icon: Icons.attach_money,
            text: 'Banking',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ServicePage_1(),));
            },
          ),
          ServiceCard(
            icon: Icons.comment_bank,
            text: 'Funds',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ServicePage_2(),));
            },
          ),
          ServiceCard(
            icon: Icons.earbuds_battery_outlined,
            text: 'Assets',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ServicePage_3(),));
            },
          ),
        ],
      ),
    // )
    ]
      )
    );

  }
}