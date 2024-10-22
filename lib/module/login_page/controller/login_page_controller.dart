import 'package:flutter/material.dart';
import 'package:uts_mobile/core.dart';
import '../view/login_page_view.dart';

class LoginPageController extends State<LoginPageView> {
  static late LoginPageController instance;
  late LoginPageView view;

  @override
  void initState() {
    super.initState();
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
  String conusername = "admin";
  String conpassword = "admin";
  String username = "";
  String password = "";

  // ignore: non_constant_identifier_names
  ConfirmLogin() {
    if (username == conusername && password == conpassword) {
      Navigator.pushReplacementNamed(
        context,
        '/home',
      );
    } else {
      showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Username atau Password salah!!!!!',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Center(
                  child: Text(
                    "coba lagi",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
