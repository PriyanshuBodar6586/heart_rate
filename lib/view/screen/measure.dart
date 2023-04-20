import 'dart:async';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'lottie.dart';

int randomNumber = 0;

class Measure extends StatefulWidget {
  const Measure({Key? key}) : super(key: key);

  @override
  State<Measure> createState() => _MeasureState();
}

class _MeasureState extends State<Measure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Measure",
          style: TextStyle(fontSize: 22.sp, color: Colors.blueAccent),
        ),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$randomNumber",
                  style: TextStyle(fontSize: 23.sp, color: Colors.white)),
              InkWell(
                onTap: () {
                  Timer(
                    const Duration(seconds: 5),
                    () {
                      setState(
                        () {
                          randomNumber = (Random().nextInt(150) + 41);
                        },
                      );
                    },
                  );

                  Get.to(const Lottie_Screen());
                },
                child: Container(
                  height: 45.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: Colors.blue, width: 1.5.h),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/main.json", height: 6.h, width: 6.h),
                      Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 29.sp),
                      ),
                      Text(
                        "Tap To Measure",
                        style: TextStyle(color: Colors.white, fontSize: 19.sp),
                      ),
                    ],
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
