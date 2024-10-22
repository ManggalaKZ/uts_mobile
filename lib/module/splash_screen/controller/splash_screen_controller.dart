import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uts_mobile/core.dart';

class SplashScreenController extends State<SplashScreenView> {
  static late SplashScreenController instance;
  late SplashScreenView view;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Setelah durasi selesai, navigasi ke halaman utama
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPageView()),
      );
    });
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
