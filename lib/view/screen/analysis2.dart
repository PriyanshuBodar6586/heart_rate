// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Anaalysis2 extends StatefulWidget {

  const Anaalysis2({Key? key,}) : super(key: key);

  @override
  _Anaalysis2State createState() => _Anaalysis2State();
}

class _Anaalysis2State extends State<Anaalysis2> {
  late List<charts.Series<Pollution, String>> _seriesData;
  late List<charts.Series<Task, String>> _seriesPieData;
  late List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      Pollution(1980, 'Systolic', firstIndex.toInt()),
      Pollution(1980, 'Diastolic', secondIndex.toInt()),
      Pollution(1980, 'Puls', thirdIndex.toInt()),
    ];
    var data2 = [
      Pollution(1985, 'Systolic', secondIndex.toInt()),
      Pollution(1980, 'Diastolic',  thirdIndex.toInt()),
      Pollution(1985, 'Puls',  firstIndex.toInt()),
    ];
    var data3 = [
      Pollution(1985, 'Systolic',  thirdIndex.toInt()),
      Pollution(1980, 'Diastolic',  firstIndex.toInt()),
      Pollution(1985, 'Puls',  secondIndex.toInt()),
    ];



    var linesalesdata = [
      Sales(0, 45),
      Sales(1, 56),
      Sales(2, 55),
      Sales(3, 60),
      Sales(4, 61),
      Sales(5, 70),
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
            charts.ColorUtil.fromDartColor(const Color(0xff990099)),
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



    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
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
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Pollution, String>>[];
    _seriesPieData = <charts.Series<Task, String>>[];
    _seriesLineData = <charts.Series<Sales, int>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Analysis",style: TextStyle(fontSize: 22.sp,color: Colors.blueAccent)),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
        body: backGround(
          Center(
             child: Column(
               children: <Widget>[


                 Expanded(
                   child: charts.BarChart(
                     _seriesData,
                     animate: true,
                     barGroupingType: charts.BarGroupingType.grouped,
                     //behaviors: [new charts.SeriesLegend()],
                     animationDuration: const Duration(seconds: 2),
                     vertical: true,

                   ),
                 ),
               ],
             ),
           ),
        ),);


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
