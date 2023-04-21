import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Bquestion1 extends StatefulWidget {
  const Bquestion1({Key? key}) : super(key: key);

  @override
  State<Bquestion1> createState() => _Bquestion1State();
}

class _Bquestion1State extends State<Bquestion1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Blood Pressure Number",
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
              Image.asset("assets/image/b01.png",height: 30.h),
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
                child: Text("""👉 The five blood pressure ranges as recognized by the American Heart Association are:

1. Normal

Blood pressure numbers of less than 120/80 mmHg are considered within the normal range.

2. Elevated

Elevated blood pressure is when readings consistently range from 120-129 systolic and less than 80 mm Hg diastolic.

3. Hypertension Stage 1

Hypertension Stage 1 is when blood pressure consistently ranges from 130-139 systolic or 80-89 mm Hg diastolic.

4. Hypertension Stage 2

Hypertension Stage 2 is when blood pressure consistently ranges at 140/90 mm Hg or higher.

5. Hypertensive crisis This stage of high blood pressure requires medical attention. If your blood pressure readings suddenly exceed 180/120 mm Hg, wait five minutes and then test your blood pressure again. If your readings are still unusually high, contact your doctor immediately. You could be experiencing a hypertensive crisis.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
            ],
          ),
        ),
      ),
    );
  }
}
