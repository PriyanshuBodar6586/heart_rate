
// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Lottie_Screen extends StatefulWidget {
  const Lottie_Screen({Key? key}) : super(key: key);

  @override
  State<Lottie_Screen> createState() => _Lottie_ScreenState();
}


class _Lottie_ScreenState extends State<Lottie_Screen> {
  int? randomNumber;
  File? _capturedImage;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Get.back();

    });
    return WillPopScope(
    onWillPop: ()async=> false,
      child: Scaffold(

        body: backGround(
           Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/129223-heart-rate.json"),

                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 25.h,
                    width: 30.h,
                    child: SmartFaceCamera(
                      imageResolution: ImageResolution.high,
                      showCameraLensControl: false,
                      showControls: false,
                      showFlashControl: false,
                      autoCapture: false,
                      defaultCameraLens: CameraLens.back,

                      onCapture: (File? image) {
                        _capturedImage = image;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



}