
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_rate/const/const.dart';
import 'package:lottie/lottie.dart';

import 'package:torch_light/torch_light.dart';

class Lottie_Screen extends StatefulWidget {
  const Lottie_Screen({Key? key}) : super(key: key);

  @override
  State<Lottie_Screen> createState() => _Lottie_ScreenState();
}


class _Lottie_ScreenState extends State<Lottie_Screen> {

  int? randomNumber;

@override
  void initState() {
  torchLightOn();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 8), () {
        torchLightOff();
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


              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> torchLightOn() async {
    try {
      await TorchLight.enableTorch();
    } on EnableTorchExistentUserException catch (e) {
    } on EnableTorchNotAvailableException catch (e) {
    } on EnableTorchException catch (e) {
    }
  }
  Future<void> torchLightOff() async {
    try {
      await TorchLight.disableTorch();
    } on DisableTorchExistentUserException catch (e) {
    } on DisableTorchNotAvailableException catch (e) {
    } on DisableTorchException catch (e) {

    }
  }


}