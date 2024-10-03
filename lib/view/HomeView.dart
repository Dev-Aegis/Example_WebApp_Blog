import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Image> imgList = [1, 2, 3, 4, 5].map((number) => Image.asset('assets/img/page_$number.jpeg', fit: BoxFit.cover,)).toList();
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    
    Timer.periodic(
      Duration(seconds: 3), (timer) {
        print("실행!");
        int? nextPage = pageController.page?.toInt();

        if(nextPage == null) return;

        if(nextPage == 4) {
          nextPage = 0;
        } else {
          ++nextPage;
        }

        pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease);
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: imgList,
      )
    );
  }
}
