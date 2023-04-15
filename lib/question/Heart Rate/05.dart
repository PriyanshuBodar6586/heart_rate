import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Question5 extends StatefulWidget {
  const Question5({Key? key}) : super(key: key);

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("High Heart Rate Complication",
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
              Image.asset("assets/image/heart.png",height: 35.h),
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
                child: Text("""👉 Tachycardia is the medical term for a heart rate over 100 beats a minute. Many types of irregular heart rhythms (arrhythmias) can cause tachycardia.

👉 A fast heart rate isn't always a concern. For instance, the heart rate typically rises during exercise or as a response to stress.

👉 when the heart beats too fast, it may not pump enough blood to the rest of the body. As a result, the organs and tissues may not get enough oxygen.

👉 in general, tachycardia may lead to the following signs and symptoms:

👉 Sensation of a racing, pounding heartbeat or flopping in the chest (palpitations).

👉 Chest pain

👉 Fainting (syncope)

👉 Lightheartedness

👉 Rapid pulse rate

👉 Shortness of breath

👉 Tachycardia may not cause any symptoms or
complications. But if left untreated, some forms of
tachycardia can lead to serious health problems
including:

👉 Fainting: A person with a rapid heartbeat may lose consciousness, increasing their risk of a fall or other accident.

Sudden death: This usually only occurs with ventricular tachycardia or ventricular fibrillation.
👉 Blood clots: These can significantly increase the risk of heart attack or stroke.

👉 Heart failure: Without treatment, the heart car become weaker, increasing the risk of heart failure.

👉 The risk of complications depends on several factors, including:

👉 The severity and duration of the tachycardia the type

👉 The overall health of the person

👉 Any other heart conditions they may have.""",style: TextStyle(color: Colors.white,fontSize: 19.sp),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
