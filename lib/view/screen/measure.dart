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

                  Get.defaultDialog(
                    barrierDismissible: false,

                    backgroundColor: Colors.blue,
                    title: "Information",
                    titleStyle: const TextStyle(color: Colors.white),
                    actions: [
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(const StadiumBorder()),
                            backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFFFFFFF))),

                        onPressed: ()  {
                          Get.to(const Lottie_Screen());

                        },
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                    content: SizedBox(
                      height: 32.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 20.h,
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/image/dilog.png')),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              "Tap to start  Scan Your Hand & start to Measurement.",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );

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
