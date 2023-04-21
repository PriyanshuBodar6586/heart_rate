import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Bquestion5 extends StatefulWidget {
  const Bquestion5({Key? key}) : super(key: key);

  @override
  State<Bquestion5> createState() => _Bquestion5State();
}

class _Bquestion5State extends State<Bquestion5> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("lower blood pressure",
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
                child: Text("""👉 1. It's best to check with your doctor before you jump into an exercise program. Some medications, including high blood pressure drugs, affect your heart rate and your body's response to exercise. Also, if you take blood pressure drugs and recently increased your activity level, ask your doctor if you need to adjust your dose. For some people, getting more exercise reduces their need for blood pressure medication.

2. You should try to get at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous aerobic activity a week, or a combination of the two. Aim for at least 30 minutes of aerobic activity most days of the week. If you're not used to exercising, work slowly toward this goal. You can break up your workout into three 10-minute sessions of aerobic exercise and get the same benefit as one 30-minute session.

3. Any activity that increases your heart and breathing rates is considered aerobic activity,

including:
👉 Active sports, such as basketball or tennis Bicycling
👉 Climbing stairs
👉 Dancing
👉 Gardening, including mowing the lawn and raking leaves
👉 Jogging
👉 Swimming
👉 Walking

4. If you sit for several hours a day, try to take 5- to 10-minute breaks each hour to stretch and move. Try low-intensity activities such as taking a quick walk or even going to the kitchen or breakroom to get a drink of water. Setting a reminder on your phone or computer may be helpful.

5. Check your heart rate during exercise. To reduce the risk of injury while exercising, start slowly. Remember to warm up before you exercise and cool down afterward. Build up the intensity of your workouts gradually

6. Stop if you feel pain Stop exercising and seek immediate medical care if you have any warning signs of possible heart problems during exercise,

including:
👉 Chest, neck, jaw or arm pain or tightness
👉 Dizziness or faintness
👉 Severe shortness of breath
👉 An irregular heartbeat
👉 Monitor your progress""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
