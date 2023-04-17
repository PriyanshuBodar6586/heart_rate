
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:heart_rate/view/bottembar.dart';
import 'package:heart_rate/view/bottembar2.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: backGround(
         Column(
          children: [
            SizedBox(height: 7.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                Text("Hi there",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                Text("Good Evening",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w600,color: Colors.white)),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(const Bottembar());
                  },
                  child: Container(
                    height: 25.h,
                    width: 45.w,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset("assets/image/heaet.png",fit: BoxFit.fill)),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Get.to(const Bottembar2(),);
                  },
                  child: Container(
                    height: 25.h,
                    width: 45.w,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset("assets/image/bpre.png",fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 35.h,
              width: 95.w,
              color: Colors.yellowAccent,
              child: const Center(child: Text("AD space",style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }
}
