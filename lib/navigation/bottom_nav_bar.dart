

import 'package:flutter/material.dart';
import 'package:untitled/navigation/nav_bar.dart';
import 'package:untitled/pages/About/AboutPage.dart';
import 'package:untitled/pages/leads/LeadsPage.dart';
import 'package:untitled/pages/products/ProductPage.dart';


class Entrypoint extends StatefulWidget {
  const Entrypoint({Key? key}) : super(key: key);

  @override
  State<Entrypoint> createState() => _EntrypointState();
}

class _EntrypointState extends State<Entrypoint> {
  final List<Widget> _children = [
    nav_bar(),
    LeadsPage(),
    // LineChartSample1State()
    ProductPage(),
    Aboutpage(),
    // Add your screens here
    // InboxPage(),
    // SignInPage()
  ];

  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(

        height: 70,
        elevation: 0,
        selectedIndex: _currentIndex,
        destinations:  [
          NavigationDestination(icon: Icon(Icons.home, color: _currentIndex ==0? Colors.blue[900]:Colors.grey,), label: "Home",),
          NavigationDestination(icon: Icon(Icons.leaderboard_rounded,color: _currentIndex ==1? Colors.blue[900]:Colors.grey,), label: "Leads"),
          NavigationDestination(icon: Icon(Icons.account_tree,color: _currentIndex ==2? Colors.blue[900]:Colors.grey,), label: "Product"),
          NavigationDestination(icon: Icon(Icons.supervisor_account_rounded,color: _currentIndex ==3? Colors.blue[900]:Colors.grey,), label: "Profile"),
        ],
        onDestinationSelected: (index) => _onTap(index),
      ),
      body: _children[_currentIndex ],


    );
  }
}

class NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final List<NavigationDestination> destinations;
  final ValueChanged<int> onDestinationSelected;
  final double height;
  final double elevation;

  const NavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.destinations,
    required this.onDestinationSelected,
    this.height = 80,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: Container(

        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(44),
            topLeft: Radius.circular(44),
            bottomRight: Radius.circular(44),
            bottomLeft: Radius.circular(44)
          ),
          color: Colors.grey[100],
          // color: Colors.blue[900],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: destinations.asMap().entries.map((entry) {
            final int index = entry.key;
            final NavigationDestination destination = entry.value;
            final bool isSelected = index == selectedIndex;
            return IconButton(
              icon: destination.icon,
              onPressed: () => onDestinationSelected(index),
              color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NavigationDestination {
  final Icon icon;
  final String label;

  const NavigationDestination({
    required this.icon,
    required this.label,
  });
}

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Replace with your desired screen content
      child: Center(
        child: Text(
          'Slider Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

