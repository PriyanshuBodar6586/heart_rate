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
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("History",
            style: TextStyle(fontSize: 22.sp, color: Colors.blueAccent)),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 19.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Apr 19,2023  10:21",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                            Text(
                              "Normal",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  " Systolic ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                            SizedBox(height: 1.h,),
                            Text("100",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                )),

                              ],

                            ),

                            Column(
                              children: [
                                Text(" Diastolic ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    )),
                                SizedBox(height: 1.h,),
                                Text("150",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Text(" Puls ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    )),
                                SizedBox(height: 1.h,),
                                Text("78",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    )),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
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
                  child: Center(
                    child: Text(
                      "+ Add Data",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
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
