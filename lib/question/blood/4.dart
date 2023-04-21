import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Bquestion4 extends StatefulWidget {
  const Bquestion4({Key? key}) : super(key: key);

  @override
  State<Bquestion4> createState() => _Bquestion4State();
}

class _Bquestion4State extends State<Bquestion4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Home blood",
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
              Image.asset("assets/image/b01.png",height: 35.h),
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
                child: Text("""👉 How to use a home blood pressure monitor
Be still. Don't smoke, drink caffeinated beverages or exercise within 30 minutes before measuring your blood pressure. Empty your bladder and ensure at least 5 minutes of quiet rest before neasurements. Sit with your back straight and supported , your feet should be flat on the floor and your legs should not be crossed. Your arm should be supported on a flat surface with the upper arm at heart level. Make sure the bottom of the cuff is placed directly above the bend of the elbow.

👉 Measure at the same time every day. It's important to take the readings at the same time each day, such as morning and evening. It is best to take the readings daily however ideally beginning 2 weeks after a change in treatment and during the week before your next appointment.

👉 Take multiple readings and record the results. Each time you measure, take two or three readings one minute apart and record the results using a printable PDF tracker. If your monitor has built-in memory to store your readings, take it with you to your appointments. Don't take the measurement over clothes.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
