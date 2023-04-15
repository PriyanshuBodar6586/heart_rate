
import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Factors Affecting Heart Rate",
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
              Image.asset("assets/image/Resting.png",height: 32.h),
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
                child: Text("""👉 Resting heart rate (RHR) -- the number of times your heart beats per minute at rest -- is a quick way to gauge how efficiently your heart is working. What's considered normal can vary widely from person to person, but in general, your RHR should fall between 60 and 100 beats per minute. 

👉 If your RHR is consistently above 100 beats per minute (a condition known as tachycardia), you should consult a doctor, especially if you're experiencing other symptoms, such as chest tightness, fatigue or shortness of breath. 

👉 A high resting heart (ie >100 bpm) can mean many things," says cardiologist Jennifer Haythe, MD, co-director of Columbia Women's Heart Center. "You may be dehydrated, have a poor level of physical fitness, or it could be a sign of something more serious with your heart or lungs.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
