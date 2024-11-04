import 'dart:core';

import 'package:flutter/material.dart';
import 'package:untitled/pages/first_page.dart';
// import 'package:untitled/pages/home/Youtube/video_page1.dart';
// import 'package:untitled/pages/home/Youtube/video_page2.dart';
// import 'package:untitled/pages/home/Youtube/video_page3.dart';
// import 'package:untitled/pages/home/Youtube/widgets/video_card.dart';
import 'package:untitled/pages/home/first_card/card1.dart';
import 'package:untitled/pages/home/first_card/card2.dart';
import 'package:untitled/pages/home/first_card/card3.dart';
// import 'package:untitled/pages/home/second_card/CardItem.dart';
import 'dart:async';

import 'package:untitled/pages/home/second_card/card_widget_1.dart';
import 'package:untitled/pages/home/second_card/card_widget_2.dart';
import 'package:untitled/pages/home/second_card/first_card.dart';
import 'package:untitled/pages/home/second_card/second_card.dart';
import 'package:untitled/pages/home/third_card/page_1.dart';
import 'package:untitled/pages/home/third_card/page_2.dart';
import 'package:untitled/pages/home/third_card/page_3.dart';
import 'package:untitled/pages/home/third_card/widget_1.dart';
import 'package:untitled/pages/leads/implement.dart';
import 'package:untitled/pages/products/ProductPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:untitled/utils/app_images.dart';
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _numPages = 3; // Number of cards
  int _currentPage = 0;
  // late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Automatic slide every 3 seconds
    Timer.periodic(const Duration(seconds: 3), (Timer timer)
    {
      if (_currentPage < _numPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    );
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dashboard'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // width: 800,
                height: 200.0, // Adjust the height as needed
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _numPages,
                  itemBuilder: (BuildContext context, int index) {
                    switch (index) {
                      case 0:
                        return Card1();
                      case 1:
                        return Card2();
                      case 2:
                        return Card3();
                      default:
                        throw Exception('Invalid index');
                    }
                  },
                ),

              ),




              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                child: Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.blue[500],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardWidget_1(
                      imagePath: 'assets/images/page_3.png', // Replace with your image path
                      redirectPage: FirstPage(),
                    ),

                    // CardWidget_1(
                    //   imagePath: 'assets/images/page_3.png',
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => ProductPage()),
                    //     );
                    //   },
                    // ),


                    CardWidget_2(
                      imagePath: 'assets/images/page_2.png', // Replace with your image path
                      redirectPage: SecondPage(),
                      // redirectPage: SecondPage(),
                    ),
                    // CardWidget_2(
                    //   icon: Icons.attach_money,
                    //
                    //   text: 'Banking',
                    //   onTap: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicePage_1(title: 'Banking',),));
                    //   },
                    // ),
                  ],
                ),
              ),



              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                child: Text(
                  "Services",
                  style: TextStyle(
                    color: Colors.blue[500],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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



                  Container(alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    child: Text(
                      "Learn to Earn more",
                      style: TextStyle(
                        color: Colors.blue[500],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                  // Container(
                  //   width: 300, // Example width
                  //   height: 200, // Example height
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.blueAccent),
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(12),
                  //     child: YoutubePlayer(
                  //       controller: _controller,
                  //       showVideoProgressIndicator: true,
                  //       progressIndicatorColor: Colors.blueAccent,
                  //     ),
                  // )





                  YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: 'S3npWREXr8s',  // Replace with your video ID or URL
                      flags: const YoutubePlayerFlags(
                        autoPlay: true,
                        mute: false,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.blueAccent,
                    progressColors: const ProgressBarColors(
                      playedColor: Colors.blue,
                      handleColor: Colors.blueAccent,
                    ),
                  ),
                ]



              )









            ],
          ),
        ),
      ),
    );
  }

}