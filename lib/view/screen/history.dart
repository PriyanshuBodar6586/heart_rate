import 'package:flutter/material.dart';
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("History",style: TextStyle(fontSize: 22.sp,color: Colors.blueAccent)),
        backgroundColor: Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        Column(
          children: [

          ],
        ),
      ),
    );
  }
}
