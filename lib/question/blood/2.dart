import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Bquestion2 extends StatefulWidget {
  const Bquestion2({Key? key}) : super(key: key);

  @override
  State<Bquestion2> createState() => _Bquestion2State();
}

class _Bquestion2State extends State<Bquestion2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(" measurement mistakes",
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
                child: Text("""👉 When getting blood pressure measured, both feet need to rest on the ground or a stool. The back needs to be supported, as well as the arm, which should be propped at heart level. Many times, these procedures fail to be observed.
                
             Other common mistakes include:
• Falling to rest before a measurement. Sitting quietly for about five minutes can help relax the body.

• Placing a cuff over clothing. Depending on the thickness of the sleeve, clothing can add up to 50 mmHg to a reading. The blood pressure cuff needs to be placed on a bare arm - so roll up your sleeve or come wearing short sleeves

• Using the wrong sized cuff. Squeezing an arm into a cuff that's too small can add anywhere between 2 mmHg and 10 mmHg to a measurement.

•Engaging in conversation. Avoid the small talk. Even active listening can add 10 mmHg.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
