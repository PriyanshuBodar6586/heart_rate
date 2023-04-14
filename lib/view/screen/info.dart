// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';

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
             _listiteam((){ },"What Is Heart Rate"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
             _listiteam((){ },"Factors Affecting Heart Rate"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Resting Heart Rate"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Target Heart Rate"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"High Heart rate Complication"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Heart Rate Zone Of Children"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Methods To Improve Heart Rate"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Calm a racing heart fast"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"How to Relieve Stress"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              SizedBox(
                height: 1.h,
              ),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              SizedBox(
                height: 2.h,
              ),
              Text("Blood Pressure",style: TextStyle(color: Colors.blueAccent,fontSize: 25.sp)),
              _listiteam((){ },"Blood Pressure Numbers"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Blood Pressure Measurement mistakes"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Blood Pressure Misbelief"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Home Blood Pressure Measurement"),
              Divider(height: 2,endIndent: 7.w,thickness: 2,indent: 7.w,color: Colors.blueAccent.withOpacity(0.4)),
              _listiteam((){ },"Exercise to Lower Blood Pressure"),
            ],
          ),
        ),
      ),
    );
  }
  _listiteam(void Function() onTap, String text,) {
    return ListTile(
     // shape: Border(bottom:BorderSide(width: 2,color: Colors.blueAccent.withOpacity(0.3))),

      onTap: onTap,

      title: Text(text,style: TextStyle(color: Colors.white,fontSize: 17.sp)),
      trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white),
      
    );
  }
}
