// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
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
      backgroundColor: Color(0xff222222),
      body: Column(
        children: [
          SizedBox(height: 7.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi there",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Evening",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w600,color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 28.h,
                width: 45.w,
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset("assets/image/heart.png",fit: BoxFit.fill)),
              ),
              Container(
                height: 28.h,
                width: 45.w,
                color: Colors.yellowAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
