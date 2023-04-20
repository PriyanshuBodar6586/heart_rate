import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:heart_rate/view/bottembar2.dart';
import 'package:heart_rate/view/utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'history2.dart';

class AddData2 extends StatefulWidget {
  const AddData2({Key? key}) : super(key: key);

  @override
  State<AddData2> createState() => _AddData2State();
}

class _AddData2State extends State<AddData2> {
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

  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 00,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Add Data",
            style: TextStyle(fontSize: 22.sp, color: Colors.blueAccent)),
        backgroundColor: const Color(0xff00101E),
      ),
      body: backGround(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pickDate();
                    },
                    child: Container(
                      height: 6.5.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "${eventDate.day}/${eventDate.month}/${eventDate.year}",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pickTime();
                    },
                    child: Container(
                      height: 6.5.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          _eventTime,
                          style:
                              TextStyle(fontSize: 20.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  )
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
                        "Systolic",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                        width: 20.w,
                        child: CupertinoPicker(
                          itemExtent: 60,
                          diameterRatio: 0.8,
                          looping: true,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              firstIndex = 40.0 + index.toDouble();
                              condition();
                              stage == "Hypotension"
                                  ? _currentValue = 20
                                  : stage == "Normal"
                                      ? _currentValue = 40
                                      : stage == "Hypotension Stage 1"
                                          ? _currentValue = 60
                                          : stage == "Hypotension Stage 2"
                                              ? _currentValue = 80
                                              : stage == "Hypotension Stage 3"
                                                  ? _currentValue = 100
                                                  : _currentValue = 100;
                            });
                          },
                          selectionOverlay:
                              CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            firstValue,
                            (index, value) {
                              final isSelected = firstIndex == index;
                              final color =
                                  isSelected ? Colors.blue : Colors.white;
                              return Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: color, fontSize: 24),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Diastolic",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          )),
                      SizedBox(
                        height: 30.h,
                        width: 20.w,
                        child: CupertinoPicker(
                          itemExtent: 60,
                          diameterRatio: 0.8,
                          looping: true,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              secondIndex = 40.0 + index.toDouble();
                              print(index);
                              condition();
                              stage == "Hypotension"
                                  ? _currentValue = 20
                                  : stage == "Normal"
                                      ? _currentValue = 40
                                      : stage == "Hypotension Stage 1"
                                          ? _currentValue = 60
                                          : stage == "Hypotension Stage 2"
                                              ? _currentValue = 80
                                              : stage == "Hypotension Stage 3"
                                                  ? _currentValue = 100
                                                  : _currentValue = 100;
                            });
                          },
                          selectionOverlay:
                              CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            secondValue,
                            (index, value) {
                              final isSelected = secondIndex == index;
                              final color =
                                  isSelected ? Colors.blue : Colors.white;
                              return Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: color, fontSize: 24),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Puls",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          )),
                      SizedBox(
                        height: 30.h,
                        width: 20.w,
                        child: CupertinoPicker(
                          itemExtent: 60,
                          diameterRatio: 0.8,
                          looping: true,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              thirdIndex = 40.0 + index.toDouble();
                              condition();
                              stage == "Hypotension"
                                  ? _currentValue = 20
                                  : stage == "Normal"
                                      ? _currentValue = 40
                                      : stage == "Hypotension Stage 1"
                                          ? _currentValue = 60
                                          : stage == "Hypotension Stage 2"
                                              ? _currentValue = 80
                                              : stage == "Hypotension Stage 3"
                                                  ? _currentValue = 100
                                                  : _currentValue = 100;
                            });
                          },
                          selectionOverlay:
                              CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            thirdValue,
                            (index, value) {
                              final isSelected = thirdIndex == index;
                              final color =
                                  isSelected ? Colors.blue : Colors.white;
                              return Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: color, fontSize: 24),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 8.h,
                width: 60.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
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
                        width: 4)),
                child: Text(stage,
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
                        fontSize: 19.sp,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 1.h,
              ),
              Slider(
                value: _currentValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentValue.toString(),
                activeColor: stage == "Hypotension"
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
                thumbColor: stage == "Hypotension"
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
                inactiveColor: Colors.white,
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 6.5.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  const Bottembar2())) /*.then((_) => setState(() {}))*/;
                    },
                    child: Container(
                      height: 6.5.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      )),
                    ),
                  ),
                ],
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
