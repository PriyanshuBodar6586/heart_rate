import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:heart_rate/view/screen/adddata2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class History2 extends StatefulWidget {
  const History2({Key? key}) : super(key: key);

  @override
  State<History2> createState() => _History2State();
}

class _History2State extends State<History2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backGround(
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(const AddData2());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  Center(
                    child: Text(
                      "+ Add Data",
                      style: TextStyle(color: Colors.white, fontSize: 20.sp,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}