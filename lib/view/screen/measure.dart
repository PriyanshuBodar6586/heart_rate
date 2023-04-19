import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:face_camera/face_camera.dart';
import 'package:torch_light/torch_light.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:heart_rate/view/screen/lottie.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

int randomNumber = 0;

random() {
  randomNumber = (Random().nextInt(150) + 40);
}

class Measure extends StatefulWidget {
  const Measure({Key? key}) : super(key: key);

  @override
  State<Measure> createState() => _MeasureState();
}

class _MeasureState extends State<Measure> {
  bool change = false;
  int? randomNumber;
  File? capturedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Measure",
          style: TextStyle(fontSize: 22.sp, color: Colors.blueAccent),
        ),
        backgroundColor: const Color(0xff00101E),
        elevation: 00,
      ),
      body: backGround(
        Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$randomNumber",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white)),
                  ElevatedButton(
                      onPressed: () {
                        torchLightOff();
                      },
                      child: Text("Darshan")),
                  InkWell(
                    onTap: () {
                      torchLightOn();
                      setState(() {
                        change = true;
                        random();
                      });
                      Timer(
                        const Duration(seconds: 5),
                        () {
                          torchLightOff();
                          setState(
                            () {
                              change = false;
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 45.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue, width: 1.5.h),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset("assets/main.json",
                              height: 6.h, width: 6.h),
                          Text(
                            "Start",
                            style:
                                TextStyle(color: Colors.white, fontSize: 29.sp),
                          ),
                          Text(
                            "Tap To Measure",
                            style:
                                TextStyle(color: Colors.white, fontSize: 19.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            change == true
                ? Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image/background.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
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
                                  capturedImage = image;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Future<void> torchLightOn() async {
    try {
      await TorchLight.enableTorch();
    } on EnableTorchExistentUserException catch (e) {
      //camera in use
      print("camera in use");
    } on EnableTorchNotAvailableException catch (e) {
      //torch not available
      print("torch not available");
    } on EnableTorchException catch (e) {
      //something went wrong
      print("something went wrong");
    }
  }

  Future<void> torchLightOff() async {
    try {
      await TorchLight.disableTorch();
    } on DisableTorchExistentUserException catch (e) {
      //camera in use
      print("camera in notuse");
    } on DisableTorchNotAvailableException catch (e) {
      //torch not available
      print("torch not available");
    } on DisableTorchException catch (e) {
      //something went wrong
      print("something went wrong");
    }
  }
}
