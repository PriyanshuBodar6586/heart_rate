import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

backGround(Widget child) {
  return Container(
    height: 100.h,
    width: 100.w,
    // padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/image/background.png",),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}