// import 'package:fl_chart/fl_chart.dart';
// import 'dart:async';
// import 'dart:math';
import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/leads/HorizontalCard.dart';
import 'package:untitled/pages/leads/Page%201.dart';
import 'package:untitled/pages/leads/Page%202.dart';
import 'package:untitled/pages/leads/Page%203.dart';
// import 'package:untitled/pages/leads/first_card/graph.dart';
// import 'package:untitled/pages/leads/first_card/graph.dart';

// class LeadsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // back buttorn
//       appBar: AppBar(
//         title: Text('Leads'),
//       ),
//       body: Center(
//         child: Text(
//           'Leads Page Content',
//           style: TextStyle(fontSize: 24),
//         ),
//
//       ),
//
//
//     );
//   }
// }


//
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:provider/provider.dart';
//
// // Example data provider (replace with your actual data source)
// class ChartDataProvider extends ChangeNotifier {
//   // Sample data for demonstration
//   List<FlSpot> _data = [
//     FlSpot(0, 1),
//     FlSpot(1, 2),
//     FlSpot(2, 3),
//     FlSpot(3, 2.5),
//     FlSpot(4, 4),
//     FlSpot(5, 3.5),
//     FlSpot(6, 5),
//     FlSpot(7, 4),
//     FlSpot(8, 3),
//     FlSpot(9, 4.5),
//     FlSpot(10, 3.5),
//   ];
//
//   List<FlSpot> get data => _data;
//
//   // Update data method
//   void updateData(List<FlSpot> newData) {
//     _data = newData;
//     notifyListeners();
//   }
// }
//
// class LeadsPage extends StatelessWidget {
//   const LeadsPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Monthly Sales'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Monthly Sales',
//               style: TextStyle(
//                 color: Colors.blue, // Replace with your desired color
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.only(right: 16, left: 6),
//                 child: LineChartSample1(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class LineChartSample1 extends StatelessWidget {
//   const LineChartSample1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ChartDataProvider>(
//       builder: (context, chartData, _) {
//         return LineChart(
//           LineChartData(
//             lineBarsData: [
//               LineChartBarData(
//                 spots: chartData.data,
//                 isCurved: true,
//                 // color: [Colors.blue],
//                 barWidth: 4,
//                 isStrokeCapRound: true,
//                 belowBarData: BarAreaData(show: false),
//                 dotData: FlDotData(show: true),
//               ),
//             ],



// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:untitled/pages/leads/ledd.dart';

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

class LeadsPage extends StatelessWidget {
  const LeadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Monthly Sales'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 370,
                child: Card(
                         margin: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Rewards & Earning',
                          style: TextStyle(
                            color: Colors.blue, // Adjust color as per your preference
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: LineChart(
                            sampleData(),
                            // swapAnimationDuration: const Duration(milliseconds: 250),
                          ),
                        ),

                      ],

                    ),

                  ),

                ),
                // Col

              ),
              // Container(
              //   alignment: Alignment.topLeft,
              //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              //   child: Text(
              //     "Products",
              //     style: TextStyle(
              //       color: Colors.blue[800],
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
          Container(
            padding: EdgeInsets.all(10),
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

                        title: 'Hamper',
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
                        title: 'Trackac',
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
                        title: 'Review',
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
          )
            ],

          ),

        ),

      ),


    );


  }

  LineChartData sampleData() {
    return LineChartData(
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 1),
            FlSpot(1, 2),
            FlSpot(2, 3),
            FlSpot(3, 2.5),
            FlSpot(4, 4),
            FlSpot(5, 3.5),
            FlSpot(6, 5),
            FlSpot(7, 4),
            FlSpot(8, 3),
            FlSpot(9, 4.5),
            FlSpot(10, 3.5),
          ],
          isCurved: true,
          color: Colors.lightBlue, // Adjust color as per your preference
          barWidth: 4,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(show: true),
        ),

      ],
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        checkToShowHorizontalLine: (value) => value % 1 == 0,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.green.shade300,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        // bottomTitles:

        // bottomTitles: SideTitles(
        //   showTitles: true,
        //   margin: 10,
        //   getTextStyles: (context, value) => const TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 14,
        //   ),
        //   getTitles: (value) {
        //     switch (value.toInt()) {
        //       case 2:
        //         return 'SEPT';
        //       case 7:
        //         return 'OCT';
        //       case 12:
        //         return 'DEC';
        //     }
        //     return '';
        //   },
        // ),
        // leftTitles: SideTitles(
        //   showTitles: true,
        //   interval: 1,
        //   margin: 10,
        //   getTextStyles: (context, value) => const TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 14,
        //   ),
        // ),
      ),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 6,
    );


    // Container()
  }


  void main() {
    runApp(Container(
      child: MaterialApp(

        home: LeadsPage(

        ),

      ),
    )
    );

  }

  // }
}
