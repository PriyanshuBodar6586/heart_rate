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
  static DateTime eventDate = DateTime.now();

  static var now = TimeOfDay.fromDateTime(DateTime.parse(eventDate.toString()));

  String _eventTime = now.toString().substring(10, 15);

  Future _pickTime() async {
    TimeOfDay? timepick =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (timepick != null) {
      setState(() {
        _eventTime = timepick.toString().substring(10, 15);
      });
    }
  }

  Future _pickDate() async {
    DateTime? pick = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().add(const Duration(days: -365)),
        lastDate: DateTime.now().add(const Duration(days: 365)));

    if (pick != null) {
      setState(() {
        eventDate = pick;
      });
    }
  }

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
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [

              Container(
                height: 29.h,
                width: 100.w,
                margin: const EdgeInsets.all(10),
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
                          "${eventDate.day}-${eventDate.month}-${eventDate.year}",
                          style: TextStyle(
                              fontSize: 20.sp, color: Colors.white),
                        ),
                        Text(
                          "${_eventTime}",
                          style: TextStyle(
                              fontSize: 20.sp, color: Colors.white),
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
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "${firstIndex.toInt()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " Diastolic ",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "${secondIndex.toInt()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
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
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "${thirdIndex.toInt()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      stage,
                      style: TextStyle(
                          color: stage == "Hypotension"
                              ? Colors.blue
                              : stage == "Normal"
                                  ? Colors.green
                                  : stage == "Hypotension Stage 1"
                                      ? Colors.yellowAccent
                                      : stage == "Hypotension Stage 2"
                                          ? Colors.deepOrangeAccent
                                          : stage == "Hypotension Stage 3"
                                              ? Colors.red
                                              : Colors.transparent,
                          fontSize: 21.sp),
                    ),
                  ],
                ),
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
              Container(
                height: 35.h,
                width: 95.w,
                color: Colors.yellowAccent,
                child: const Center(child: Text("AD space",style: TextStyle(fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  condition() {
    if (firstIndex >= 40 && firstIndex <= 80) {
      setState(() {
        stage = "Hypotension"; //blue
      });
    } else if (firstIndex >= 81 && firstIndex <= 120) {
      setState(() {
        stage = "Normal"; //Green
      });
    } else if (firstIndex >= 121 && firstIndex <= 150) {
      setState(() {
        stage = "Hypotension Stage 1"; //yellow
      });
    } else if (firstIndex >= 151 && firstIndex <= 175) {
      setState(() {
        stage = "Hypotension Stage 2"; //orange
      });
    } else if (firstIndex >= 176 && firstIndex <= 200) {
      setState(() {
        stage = "Hypotension Stage 3"; //red
      });
    }
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
