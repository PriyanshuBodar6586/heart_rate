import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question7 extends StatefulWidget {
  const Question7({Key? key}) : super(key: key);

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Methods To Improve Heart Rate ",
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
              Image.asset("assets/image/health.png",height: 35.h),
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
                child: Text("""👉 It is also possible for people to lower their heart rate in the long term. Many lifestyle habits can contribute to this. This can affect the heart rate during physical activity or periods of stress.
👉 Some factors that may lower a person's heart rate
include:

  1. Exercising

👉 The easiest and most effective way to achieve a lasting lower heart rate is to do regular exercise. Although any kind of exercise can be helpful but yoga and endurance training may be the most beneficial.

2. Staying hydrated

👉 When the body is dehydrated, the heart has to work harder to stabilize blood flow. Drinking plenty of beverages throughout the day could lower a person's heart rate.
3. Limiting intake of stimulants

👉 Stimulants can cause dehydration, increasing the heart's workload.

4. Limiting alcohol intake

👉 Drinking alcohol could cause dehydration, so that alcohol consumption could increase resting heart rate. Alcohol is also a toxin, and the body must work harder to process and remove it. This may sometimes result in heart rate increases.
5. Eating a nutritious, balanced diet

👉 Eating a healthful diet should be rich in fruits and vegetables, lean proteins, and whole grains can improve heart health and functioning. Foods and supplements rich in antioxidants and healthy fats may lower blood pressure, making it easier for the heart to pump blood. Potassium-rich foods also lower blood pressure by reducing sodium load.

6. Getting enough sleep

👉 A chronic lack of sleep puts stress on the whole body, including the heart. en people deviate from their usual bedtimes, it increases their resting heart rates.

7. Maintaining a healthy body weight

👉 Extra weight also puts stress on the body and heart. It is possible that this could lead to an increased heart rate.

8. Reducing or resolving sources of substantial long-term stress


👉  Stress from work, caring for a loved one, or financial burdens all cause the heart and body to work harder to maintain its usual rhythm.

9. Getting outdoors

👉 Some techniques for lowering heart rate car involve changing environments and spending time in less urbanized settings can reduce the physical and psychological measures of stress.

10. Practicing relaxation techniques 

👉 Relaxation techniques may also have a positive effect on stress, meditation could improve psychological well-being.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
