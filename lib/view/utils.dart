import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Widget> modelBuilder<M>(List<M> models,
      Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();

/// Alternativaly: You can display an Android Styled Bottom Sheet instead of an iOS styled bottom Sheet
// static void showSheet(
//   BuildContext context, {
//   required Widget child,
// }) =>
//     showModalBottomSheet(
//       context: context,
//       builder: (context) => child,
//     );

}