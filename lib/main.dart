import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:heart_rate/view/screen/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (contest) => const Home_Screen(),
            },
          );
        },
      ),
    ),
  );
}
