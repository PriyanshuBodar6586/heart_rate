import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question9 extends StatefulWidget {
  const Question9({Key? key}) : super(key: key);

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("How to Relieve Stress",
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
              Image.asset("assets/image/save.png",height: 35.h),
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
                child: Text("""👉 Here are simple ways to help relieve stress and anxiety:

1. Exercise
👉 Exercise lowers your body's stress hormones and release endorphins, which are chemicals that improve your mood and act as natural pain relievers. Exercise can also improve your sleep quality, which can be negatively affected by stress and anxiety.

2. Micronutrient Supplements
👉 Some supplements will help promote stress and anxiety relief: Perilla, Omega-3 fatty acids, Green Tea, Valerian... Some supplements may interact with medications or have side effects, so you may want to consult your doctor if you have a medical condition.

3. Use Essential Oils/Scented Candles
👉 Using essential oils or burning scented candles can help reduce feelings of stress and anxiety. Here are some of the most calming scents: Lavender, Rose, Orange, Bergamot, Chamomile, Neroli, Frankincense, Sandalwood.

4. Reduce your caffeine intake
👉  Caffeine is a stimulant found in coffee, chocolate, and energy drinks. High doses can cause increased anxiety. If you find that caffeine makes you jittery or anxious, consider cutting back While many studies show that coffee can be healthy in moderation, it's not for everyone.

5. Write it down
👉  One way to deal with stress is to write everything down. While jotting down what you're stressed about is one approach, another is to jot down what you're grateful for. Gratitude can help you relieve stress and anxiety by focusing your thoughts on the positive things in your life.

6. Chewing Gum 
👉 Chewing gum induces the same brain waves as in relaxed people. Another way is to chew gum that promotes blood flow to your brain. In addition, a recent study found that stress relief was best when people chewed harder.

7. Spend time with your loved ones and family
👉 Social support from friends and family can help you through a stressful time. Being part of a network of friends gives you a sense of belonging and self-worth, which can help during difficult times.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
