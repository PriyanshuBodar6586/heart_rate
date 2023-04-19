import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';

import 'package:heart_rate/view/utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



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

  int index = 0;
  int index1 = 0;
  int index2 = 0;

  static List<String> values = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  static List<String> valuess = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];
  static List<String> valuesss = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
  ];
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
                          style: TextStyle(fontSize: 20.sp, color: Colors.white),
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
                      Text("Systolic",
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

                          onSelectedItemChanged: (index) =>
                              setState(() => this.index = index),
                          // selectionOverlay: Container(),
                          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            values,
                                (index, value) {
                              final isSelected = this.index == index;
                              final color = isSelected ? Colors.blue : Colors.white;

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
                          onSelectedItemChanged: (index) =>
                              setState(() => index1 = index),
                          // selectionOverlay: Container(),
                          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            valuess,
                                (index, value) {
                              final isSelected = index1 == index;
                              final color = isSelected ? Colors.blue : Colors.white;
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
                          onSelectedItemChanged: (index) =>
                              setState(() => index2 = index),
                          // selectionOverlay: Container(),
                          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                            background: Colors.blue.withOpacity(0.2),
                          ),
                          children: Utils.modelBuilder<String>(
                            valuesss,
                                (index, value) {
                              final isSelected = index2 == index;
                              final color = isSelected ? Colors.blue : Colors.white;

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

              Text(_currentValue.toString(),
                  style: TextStyle(fontSize: 25.sp, color: Colors.white)),
              Slider(
                value: _currentValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentValue.toString(),
                activeColor: Colors.blueAccent,
                thumbColor: Colors.blue,
                inactiveColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
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


}
