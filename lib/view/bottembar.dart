// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_rate/view/screen/home_screen.dart';
import 'package:heart_rate/view/screen/info.dart';
import 'package:heart_rate/view/screen/measure.dart';
import 'package:heart_rate/view/screen/profile.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';


class Bottembar extends StatefulWidget {
  const Bottembar({Key? key}) : super(key: key);

  @override
  _BottembarState createState() => _BottembarState();
}

class _BottembarState extends State<Bottembar> {

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
              Measure(),
              Info(),
              Profile(),
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
                filledIcon: Icons.monitor_heart_rounded,
                outlinedIcon: Icons.monitor_heart_outlined,
              ),

              BarItem(
                filledIcon: Icons.info,
                outlinedIcon: Icons.info_outline_rounded,
              ),
              BarItem(

                filledIcon: Icons.person,
                outlinedIcon: Icons.person_outline_rounded,
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
