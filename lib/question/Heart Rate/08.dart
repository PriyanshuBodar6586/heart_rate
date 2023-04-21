import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question8 extends StatefulWidget {
  const Question8({Key? key}) : super(key: key);

  @override
  State<Question8> createState() => _Question8State();
}

class _Question8State extends State<Question8> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Calm a racing heart fast",
            style: TextStyle(fontSize: 20.sp, color: Colors.blueAccent)),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset("assets/image/blood.png",height: 35.h),
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
                child: Text("""👉 Ways to reduce sudden changes in heart rate
include:

👉 Practicing deep or guided breathing techniques such as box breathing

👉 Relaxing and trying to remain calm. 

👉 Going for a walk, ideally away from an urban environment

👉 Taking a warm, relaxing bath or shower

👉 Practicing stretching and relaxation exercises,such as yoga

👉 Performing vagal maneuvers""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
