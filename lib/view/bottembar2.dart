// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_rate/view/screen/home_screen.dart';

import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'screen/analysis2.dart';
import 'screen/history2.dart';
import 'screen/trends2.dart';

class Bottembar2 extends StatefulWidget {
  const Bottembar2({Key? key}) : super(key: key);

  @override
  _Bottembar2State createState() => _Bottembar2State();
}

class _Bottembar2State extends State<Bottembar2> {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: WillPopScope(
        onWillPop: () => back(),
        child: Scaffold(

          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const <Widget>[
              History2(),
              Trends2(),
              Anaalysis2(),
            ],
          ),
          bottomNavigationBar: WaterDropNavBar(
            backgroundColor: Colors.black,
            waterDropColor: Colors.blue,
            onItemSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              pageController.animateToPage(selectedIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            },
            selectedIndex: selectedIndex,
            barItems: <BarItem>[
              BarItem(
                  filledIcon: Icons.work_history_rounded,
                  outlinedIcon: Icons.work_history_outlined),
              BarItem(
                filledIcon: CupertinoIcons.chart_pie_fill,
                outlinedIcon: CupertinoIcons.chart_pie,
              ),
              BarItem(
                filledIcon: Icons.info,
                outlinedIcon: Icons.info_outline_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }

  back() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home_Screen(),
        ));
  }
}
