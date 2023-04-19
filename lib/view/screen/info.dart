// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:heart_rate/question/Heart%20Rate/01.dart';
import 'package:heart_rate/question/Heart%20Rate/02.dart';
import 'package:heart_rate/question/Heart%20Rate/03.dart';
import 'package:heart_rate/question/Heart%20Rate/04.dart';
import 'package:heart_rate/question/Heart%20Rate/05.dart';
import 'package:heart_rate/question/Heart%20Rate/06.dart';
import 'package:heart_rate/question/Heart%20Rate/07.dart';
import 'package:heart_rate/question/Heart%20Rate/08.dart';
import 'package:heart_rate/question/Heart%20Rate/09.dart';


import 'package:responsive_sizer/responsive_sizer.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text("Information",style: TextStyle(fontSize: 22.sp,color: Colors.blueAccent)),
        backgroundColor: Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
         SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text("Heart Rate",style: TextStyle(color: Colors.blueAccent,fontSize: 25.sp)),
             _listiteam((){ Get.to(Question1(),);},"What Is Heart Rate"),
              _divider(),
             _listiteam((){Get.to(Question2()); },"Factors Affecting Heart Rate"),
              _divider(),
              _listiteam((){Get.to(Question3()); },"Resting Heart Rate"),
              _divider(),
              _listiteam((){Get.to(Question4()); },"Target Heart Rate"),
              _divider(),
              _listiteam((){Get.to(Question5()); },"High Heart rate Complication"),
              _divider(),
              _listiteam((){Get.to(Question6()); },"Heart Rate Zone Of Children"),
              _divider(),
              _listiteam((){Get.to(Question7()); },"Methods To Improve Heart Rate"),
              _divider(),
              _listiteam((){Get.to(Question8()); },"Calm a racing heart fast"),
              _divider(),
              _listiteam((){Get.to(Question9());  },"How to Relieve Stress"),
              _divider(),
              SizedBox(
                height: 1.h,
              ),
              _divider(),
              SizedBox(
                height: 2.h,
              ),
              Text("Blood Pressure ",style: TextStyle(color: Colors.blueAccent,fontSize: 25.sp)),
              _listiteam((){ },"Blood Pressure Numbers"),
              _divider(),
              _listiteam((){ },"Blood Pressure Measurement mistakes"),
              _divider(),
              _listiteam((){ },"Blood Pressure Misbelief"),
              _divider(),
              _listiteam((){ },"Home Blood Pressure Measurement"),
              _divider(),
              _listiteam((){ },"Exercise to Lower Blood Pressure"),

            ],
          ),
        ),
      ),
    );
  }
  _listiteam(void Function() onTap, String text,) {
    return ListTile(


      onTap: onTap,

      title: Text(text,style: TextStyle(color: Colors.white,fontSize: 17.sp)),
      trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white),
      
    );
  }
  _divider() {
    return Divider(
        height: 2,
        endIndent: 7.w,
        thickness: 2,
        indent: 7.w,
        color: Colors.blueAccent.withOpacity(0.4));


  }
}
