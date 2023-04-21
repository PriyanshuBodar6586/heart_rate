
import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question2 extends StatefulWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Factors Affecting Heart Rate",
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
              Image.asset("assets/image/factors affecting.png",height: 32.h),
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
                child: Text("""👉 Factors Affecting Heart Rate
                
1. There are certain factors affecting heart rate when exercising. Your body relies as heavily on the oxygen/fuel ratio as your car does. Much like your car’s engine, your body uses oxygen and various fuels (carbohydrates, fats, and proteins) to yield muscle energy. When this ratio is not in balance in the body, a whole series of physiological events occur.

2. These events can be gauged with your body’s tachometer — your heart rate. And much like the automobile engine, the true efficiency of the body’s engine is dependent upon a multitude of parts working efficiently together. Your heart rate will indicate if there is any sign of trouble in your body’s engine.

👉 A Brief List of Factors Affecting Heart Rate

-- These factors play a role in directly affecting heart rate while running or walking:

1. Emotions and anxiety can raise your heart rate! Unlike an automobile that is purely mechanical, we are not solely governed by working parts. Some days you can “feel” your way to a higher HR.

2. Body Temperature: If you become too hot or too cold your body senses a thermal stress load. Blood is sent to your skin to enhance heat dissipation to cool you or increases blood flow to warm you. Apparent temperatures (which account for humidity or wind chill) above 70 degress (F) and below 35 degrees (F) will increase your heart rate at least 2-4 beats per minute. Over 90% humidity can equal as much as a 10 beat increase in heart rate.

3. The terrain. Walk or run uphill and your HR increases. Walk or run downhill and your HR decreases.

4. Wind. Walking or running with the wind at your back is easy, therefore HR decreases. Walking or running into the wind is more difficult: HR increases.

5. Dehydration. As you become increasingly dehydrated during a long walk, hike, or run, your blood becomes thicker and waste products build up in bloodstream. Your heart will work harder to maintain constant cardiac output. A fluid loss of 3% of body weight increases pulse rate because of decrease in circulating blood volume.

6. Diminishing glycogen stores — your muscles primary fuel source. As the fuel depletes, in order to maintain the same walking or running pace, your HR rises.

7. Insufficient nutrition. HR increases.

8. Insufficient sleep. HR increases.

9. Insufficient recovery after a long hike, run, or other hard workout. HR increases.

10. Recent illness — or — a signal of impending illness. You guessed it!

11. Medication – depending upon the medication, heart rate can either decrease or increase. Be certain to ask your physician about any medication you are taking and its effects on your exercise heart rate.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
