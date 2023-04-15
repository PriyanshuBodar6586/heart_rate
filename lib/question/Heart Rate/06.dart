import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question6 extends StatefulWidget {
  const Question6({Key? key}) : super(key: key);

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("High Heart Rate Complication",
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
              Image.asset("assets/image/children.png",height: 35.h),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("""👉 Newborns 0 to 1 month old: 70 to 190 beats per minute

👉 infants 1 to 11 months old: 80 to 160 beats per minute

👉 Children 1 to 2 years old: 80 to 130 beats per minute

👉 Children 3 to 4 years old: 80 to 120 beats per minute

👉 Children 5 to 6 years old: 75 to 115 beats per minute

👉 Children 7 to 9 years old: 70 to 110 beats per minute

👉 Children 10 years and older, and adults (including seniors): 60 to 100 beats per minute.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
