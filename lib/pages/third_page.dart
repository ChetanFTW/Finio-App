import 'package:flutter/material.dart';
import 'package:untitled/utils/app_images.dart';

class third_page extends StatefulWidget {
  const third_page({super.key});

  @override
  State<third_page> createState() => _third_pageState();
}

class _third_pageState extends State<third_page> {
  // const third_page({key? key}) : super(key:key)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.page_1),
        ],
      ),
    );
  }
}

