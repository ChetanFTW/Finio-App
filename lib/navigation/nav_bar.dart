//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class nav_bar_drawer extends StatefulWidget {
//   const nav_bar_drawer({super.key});
//
//   @override
//   State<nav_bar_drawer> createState() => _nav_bar_drawerState();
// }
//
// class _nav_bar_drawerState extends State<nav_bar_drawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             child: Text('Drawer Header'),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//           ),
//           ListTile(
//             title: Text('Item 1'),
//             onTap: () {
//               // Update the UI based on the item selected
//               // Navigator.pop(context); // You can uncomment this line if you want to close the drawer after navigation
//             },
//           ),
//           ListTile(
//             title: Text('Item 2'),
//             onTap: () {
//               // Update the UI based on the item selected
//               // Navigator.pop(context); // You can uncomment this line if you want to close the drawer after navigation
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
//
// class nav_bar_drawer extends StatefulWidget {
//   const nav_bar_drawer({super.key});
//
//   @override
//   State<nav_bar_drawer> createState() => _nav_bar_drawerState();
// }
//
// class _nav_bar_drawerState extends State<nav_bar_drawer> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/navigation/bar_notification.dart';
// import 'package:flutter_drawer_example/privacy_policy.dart';
// import 'package:flutter_drawer_example/send_feedback.dart';
// import 'package:flutter_drawer_example/settings.dart';
import 'package:untitled/navigation/contact.dart';
import 'package:untitled/navigation/notification.dart';
import 'package:untitled/navigation/privacy_policy.dart';
// import 'package:untitled/navigation/refer.dart';
// import 'package:untitled/navigation/refers.dart';
import 'package:untitled/navigation/refferal_page.dart';
// import 'package:untitled/navigation/search.dart';
import 'package:untitled/navigation/send_feedback.dart';
import 'package:untitled/navigation/setting.dart';
import 'package:untitled/pages/home/dashboard.dart';
// import 'package:untitled/pages/home/search.dart';

// import 'contacts.dart';
// import '../pages/home/dashboard.dart';
import 'events.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
// import 'notifications.dart';

// void main() {
//   runApp(MyApp());
// }

// class nav_bar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: nav_bar(),
//     );
//   }
// }

class nav_bar extends StatefulWidget {

  @override
  _nav_barState createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
         // container = search_bar();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }



    return Scaffold(


      appBar: AppBar(

        backgroundColor: Colors.grey[100],
        // backgroundColor: Colors.blue[900],

        // title: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(15),
        //       color: Colors.green
        //     ),
        //     child: Text("L2M")),

    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     title: Row(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: <Widget>[
    //         Expanded(
    //           child: Text(
    //             "L2M",
    //             textAlign: TextAlign.end, // Align text to the right
    //
    //           ),
    //
    //         ),
    //         Container(child: const DecoratedBox(decoration: BoxDecoration
    //           (
    //             borderRadius: BorderRadius.only()
    //         )
    //         ),
    //         color: Colors.blue,),
    //         // DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5)))),
    //
    //         TextButton(
    //
    //           onPressed: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context) => refer()),)
    //                 );
    //         },
    //           child: ,
    //         ),

      //       IconButton(
      //         padding: EdgeInsets.all(18),
      //         icon: Icon(Icons.notifications_active),
      //         onPressed: () {
      //           // Navigate to profile page
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => notificition_bar(), // Replace with your profile page widget
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      //   // centerTitle: false, // Center the title horizontally
      // ),




        actions: [

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ReferralPage(),));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[500]

                ),
                child: Text("Earn ₹200",style: TextStyle(color: Colors.white, fontSize: 15)),

            ),
          ),



          IconButton(

            padding: EdgeInsets.all(18),
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              // Navigate to search page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => notificition_bar(),
                ),
              );
            },
          ),
          // Icon(Icons.abc_sharp, )


        ],



        leadingWidth: 20,
      ),



      body: container,
      drawer: Container(
        width: MediaQuery.sizeOf(context).width*0.70,
        child: Drawer(


          child: SingleChildScrollView(

            child: Container(
              // padding: EdgeInsets.all(22),
              child: Column(

                children: [
          // const SizedBox(width: 12,),
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
      ),

    );


  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.all(
        0,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),

    );

  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[200] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}



