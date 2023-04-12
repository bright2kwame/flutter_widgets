import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color primaryColor = Color(0xFF393F59);
  Color buttonColor = Color(0xFF8E98C5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Icon(
                  Icons.museum,
                  size: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Text(
                    "Please login or sign up to continue using our app.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: const StadiumBorder()),
                  child: SizedBox(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text("Login",
                          style: _applyTextStyle(20, Colors.white)),
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    surfaceTintColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: StadiumBorder(
                        side: BorderSide(
                      color: buttonColor,
                      width: 2,
                    )),
                  ),
                  child: SizedBox(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: _applyTextStyle(14, Colors.white),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  "Continuing means you agree with the terms and conditions of the app",
                  textAlign: TextAlign.center,
                  style: _applyTextStyle(12, Colors.white),
                ),
              )
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  TextStyle _applyTextStyle(double size, Color color) {
    return TextStyle(fontSize: size, color: color);
  }

  TextStyle _applyTextStyle1({
    double? size = 16,
    Color? color = Colors.white,
  }) {
    return TextStyle(fontSize: size, color: color);
  }
}
