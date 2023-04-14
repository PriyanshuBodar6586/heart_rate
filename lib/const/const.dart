import 'package:flutter/material.dart';

backGround(Widget child) {
  return Container(
    height: double.infinity,
    width: double.infinity,
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