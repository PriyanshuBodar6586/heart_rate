import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Bquestion3 extends StatefulWidget {
  const Bquestion3({Key? key}) : super(key: key);

  @override
  State<Bquestion3> createState() => _Bquestion3State();
}

class _Bquestion3State extends State<Bquestion3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Blood pressure Misbelief",
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
                child: Text("""👉1. Myth: The signs of high blood pressure are obvious  Fact: High blood pressure has no symptoms.  Unless your blood pressure is dangerously high,  you will not have any symptoms. The long-term  damage high blood pressure has on your arteries  however, occurs regardless of whether you have  symptoms or not.

2. Myth: High blood pressure is more common in men Fact: It depends on age. Before the age of 50 hypertension is more common in men than women, but after menopause, a woman's risk increases and can even be higher than a man's. Women have a few additional considerations for nigh blood pressure. Taking birth control pills may raise their risk of hypertension

3. Myth: I don't need to worry about blood pressure, if I'm young. Fact: Although hypertension does affect older people, young people can have it, too. Younger adults can have high blood pressure and this may be behind a disturbing trend toward more strokes among younger adults. Children and teens can also have high blood pressure, possibly because of an increase in childhood obesity

4. Myth: If my blood pressure comes down on medication, I can stop taking it. Fact: You should continue taking it. High blood pressure is a lifelong condition. Medications do not cure hypertension. If you stop taking you medications, then your blood pressure will rise again.

5. Myth: There's nothing I can do to prevent high blood pressure, if it runs in my family Fact: Lifestyle changes can reduce your risk. In addition to following a healthy diet, maintaining a healthy weight and regular exercise can have a large impact on reducing blood pressure. Significant weight loss and exercising for 30 minutes every day can decrease systolic blood pressure. And tt's also important to reduce stress and make sure that you are getting enough shut-eye""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
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
