import 'package:flutter/material.dart';
import 'package:uts_mobile/core.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  Widget build(context, SplashScreenController controller) {
    controller.view = this;
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/images.png")),
      ),
    );
  }

  @override
  State<SplashScreenView> createState() => SplashScreenController();
}
