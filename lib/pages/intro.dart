
// import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:untitled/navigation/bottom_nav_bar.dart';
// import 'package:untitled/pages/home/home.dart';

import '../utils/app_images.dart';

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class SliderItem {
  SliderItem({this.title, this.des, this.imgPath,this.desBig,});
  String? imgPath;
  dynamic title;
  dynamic des;
  dynamic desBig;
}

class _introState extends State<intro> {
  PageController controller = PageController(
    viewportFraction: 1,
    keepPage: true,
  );
  int currentPos = 0;



  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      // showAppLanguage(context).then((value) {
      // });
    });
    super.initState();
  }

  List sliders = [
    SliderItem(
        title: "Welcome to Lead2Money!",
        //des: "Discover a smarter way to earn money by helping your known to get best option for their financial need and many more.",
        des: "Discover a smarter way to earn money by helping your known to get best option for their product need and many more.",
        imgPath: AppImages.page_1,
        desBig: ""
    ),
    SliderItem(
      //title: "Refer Financial Products, Earn Rewards",
      title: "Refer Products, Earn Rewards",
      des: "Use your social network and invite them to join Lead2Money and unlock exclusive reward & benefits on each successful entry. ",
      desBig: "",
      imgPath: AppImages.page_2,
    ),
    SliderItem(
      title: "Track Your Earnings",
      des: "Stay informed about your referral earnings with our intuitive tracking system. Monitor your earnings, track your progress, and watch your income grow!",
      desBig: "",
      imgPath:AppImages.page_3,
    ),
    SliderItem(
      title: "Start your Second Income!",
      des: "Ready to turn your referrals into rewards? Join Lead2Money now and start earning money by referring products. It's time to maximize your earnings potential!",
      desBig: "",
      imgPath:AppImages.page_4,
    ),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white ,
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Entrypoint(),));
                    },
                    child:   const Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text("Skip",
                           )),

                    ),



                  ),



                  SizedBox(
                      height: 625,
                      child: Stack(
                        children: [
                          PageView.builder(
                            physics: const ClampingScrollPhysics(),
                            itemCount: sliders.length,
                            controller: controller,
                            onPageChanged: (i) {
                              setState(() {
                                currentPos = i;
                              });
                            },
                            itemBuilder: (BuildContext context, index) {
                              return Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // color: Colors.red,
                                    margin: const EdgeInsets.symmetric(vertical: 70),
                                    child: Image.asset(
                                      sliders[index].imgPath,
                                      height: 280,
                                      // width: 320,
                                      // width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    sliders[index].title,

                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20,0,10,0),
                                    margin: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      sliders[index].des,



                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 10 ,),

                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),

                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        children:_buildPageIndicator() ,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: GestureDetector(
                                            onTap: (){
                                              if (currentPos==3){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Entrypoint(),));

                                              }else{
                                                controller.animateToPage(currentPos+1, duration:  const Duration(milliseconds: 500), curve: Curves.ease);
                                              }
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                                decoration: BoxDecoration( borderRadius: BorderRadius.circular(50),color: Colors.blue) ,
                                                child: Icon(Icons.arrow_forward_sharp,color: Colors.white, size: 40,))),

                                      ),
                                    ]

                                  ),
                                ),
                              ),
                              // IconButton(
                              //   icon: const Icon(Icons.arrow_forward), // Change icon as needed (e.g., Icons.keyboard_arrow_right)
                              //   onPressed: () {
                              //
                              //
                              //   },
                              //   color: Colors.white, // Adjust color as needed
                              // ),
                            ],
                          ),
                        ],
                      )),


                  // Positioned(child: child)



                ],
              ),
            )));
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(i == currentPos ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return SizedBox(
      //height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),

        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: isActive ? 10 : 7.0,
        width: isActive ? 10 : 7.0,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(50),
          shape: BoxShape.circle,
          color: isActive ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
