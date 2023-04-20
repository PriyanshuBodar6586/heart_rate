// ignore_for_file: annotate_overrides, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Trends2 extends StatefulWidget {
  const Trends2({
    Key? key,
  }) : super(key: key);

  _Trends2State createState() => _Trends2State();
}

class _Trends2State extends State<Trends2> {
  late List<charts.Series<Pollution, String>> _seriesData;
  late List<charts.Series<Task, String>> _seriesPieData;
  late List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      Pollution(1980, 'USA', 30),
      Pollution(1980, 'Asia', 40),
      Pollution(1980, 'Europe', 10),
    ];
    var data2 = [
      Pollution(1985, 'USA', 100),
      Pollution(1980, 'Asia', 150),
      Pollution(1985, 'Europe', 80),
    ];
    var data3 = [
      Pollution(1985, 'USA', 200),
      Pollution(1980, 'Asia', 300),
      Pollution(1985, 'Europe', 180),
    ];

    var piedata = [
      Task('Systolic', firstIndex, const Color(0xff188f00)),
      Task('Diastolic', secondIndex, const Color(0xffa49100)),
      Task('Puls', thirdIndex, const Color(0xffff2700)),
    ];


    var linesalesdata1 = [
      Sales(0, 35),
      Sales(1, 46),
      Sales(2, 45),
      Sales(3, 50),
      Sales(4, 51),
      Sales(5, 60),
    ];

    var linesalesdata2 = [
      Sales(0, 20),
      Sales(1, 24),
      Sales(2, 25),
      Sales(3, 40),
      Sales(4, 45),
      Sales(5, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xff8b00bd)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xffff9900)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {

    super.initState();
    _seriesData = <charts.Series<Pollution, String>>[];
    _seriesPieData = <charts.Series<Task, String>>[];
    _seriesLineData = <charts.Series<Sales, int>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Analysis",style: TextStyle(fontSize: 22.sp,color: Colors.blueAccent)),
        backgroundColor: Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: charts.PieChart<String>(_seriesPieData,
                    animate: true,
                    animationDuration: const Duration(seconds: 2),
                    behaviors: [
                      charts.DatumLegend(
                        outsideJustification:
                            charts.OutsideJustification.endDrawArea,
                        horizontalFirst: false,
                        desiredMaxRows: 2,

                        entryTextStyle: const charts.TextStyleSpec(
                            color: charts.MaterialPalette.white,
                            fontFamily: 'Georgia',
                            fontSize: 20,


                        ),
                      ),
                    ],
                    defaultRenderer: charts.ArcRendererConfig(
                        arcWidth: 100,
                        arcRendererDecorators: [
                          charts.ArcLabelDecorator(
                              labelPosition: charts.ArcLabelPosition.inside)
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
