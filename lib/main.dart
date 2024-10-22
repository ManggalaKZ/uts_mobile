import 'package:uts_mobile/module/navigation_bar/navbar.dart';
import 'package:uts_mobile/state_util.dart';
import 'package:uts_mobile/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        routes: {'/home': (context) => const MainNavigationView()},
        navigatorKey: Get.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          ),
          home: const SplashScreenView());
  }
}
