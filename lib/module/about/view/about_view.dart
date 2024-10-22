import 'package:flutter/material.dart';
import 'package:uts_mobile/core.dart';
import '../controller/about_controller.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  Widget build(context, AboutController controller) {
    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(163, 111, 53, 165),
          title: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Aplikasi ini dibuat untuk melatik navigation. aplikasi ini memisahkan class controller dan class view agar memudahkan untuk melakukan maintance.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ));
  }

  @override
  State<AboutView> createState() => AboutController();
}
