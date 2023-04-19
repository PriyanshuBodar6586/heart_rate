import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:heart_rate/const/const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Anaalysis2 extends StatefulWidget {

  const Anaalysis2({Key? key,}) : super(key: key);

  _Anaalysis2State createState() => _Anaalysis2State();
}

class _Anaalysis2State extends State<Anaalysis2> {
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
      Task('Work', 35.8, Color(0xff3366cc)),
      Task('Eat', 8.3, Color(0xff990099)),
      Task('Commute', 10.8, Color(0xff109618)),
      Task('TV', 15.6, Color(0xfffdbe19)),
      Task('Sleep', 19.2, Color(0xffff9900)),
      Task('Other', 10.3, Color(0xffdc3912)),
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
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
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
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
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
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
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
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
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

        body: backGround(
          Center(
             child: Column(
               children: <Widget>[
                 SizedBox(
                   height: 10.h,
                 ),

                 Expanded(
                   flex: 2,
                   child: charts.BarChart(
                     _seriesData,
                     animate: true,

                     barGroupingType: charts.BarGroupingType.grouped,
                     //behaviors: [new charts.SeriesLegend()],
                     animationDuration: Duration(seconds: 2),
                     vertical: false,
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
