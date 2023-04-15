
import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Target Heart Rate",
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
              Image.asset("assets/image/target.png",height: 35.h),
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
                child: Text("""👉 You get the most benefits when you exercise in your "target heart rate zone." Usually, this is when your heart rate (pulse) is 60% to 80% of your maximum. In some cases, your doctor may decrease your target heart rate zone to around50%.

👉  Check with your doctor before starting an exercise program. They can help you find a routine and target heart rate zone that match your needs, goals, and overall health,

👉  When you start an exercise program, you may need to slowly build up to your target heart rate zone, especially if you haven't exercised regularly before. If the exercise feels too hard, slow down You'll lower your risk of injury and enjoy the exercise more if you don't try to overdo it.

👉 When you exercise, take a break and check your pulse regularly to find out whether you're in your target zone. If your pulse is below your target zone, step up the intensity of your workout.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
