import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question1 extends StatefulWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("What Is Heart Rate",
            style: TextStyle(fontSize: 22.sp, color: Colors.blueAccent)),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        SingleChildScrollView(
         physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset("assets/image/heart rate.png",height: 28.h),
              Divider(
                height: 2,
                  color: Colors.blueAccent.withOpacity(0.4),
                endIndent: 7.w,
                indent: 7.w,
                thickness: 2,
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                height: 2,
                color: Colors.blueAccent.withOpacity(0.4),
                endIndent: 7.w,
                indent: 7.w,
                thickness: 2,
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                alignment: Alignment.center,
                height: 25.h,
                width: 100.w,
                color: Colors.amber,
                child: Text("Ad space"),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("""👉 Your heart rate is the number of times that your heart beats in a minute. Your body automatically controls your heartbeat to match whatever you're doing or what's happening around you. That's why your heartbeat gets faster when you're active, excited or scared, and drops when you're resting, calm or comfortable.

👉 Your heart rate is an important indicator of your overall health too. When your heart rate is too fast or too slow, that can be a sign of heart or other health problems. The ability to feel your heart rate throughout your body is also a potential way for doctors to diagnose medical conditions.""",style: TextStyle(color: Colors.white,fontSize: 20.sp),),
              ),
              Container(
                alignment: Alignment.center,
                height: 25.h,
                width: 100.w,
                color: Colors.amber,
                child: Text("Ad space"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
