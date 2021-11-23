import "package:flutter/material.dart";
import 'package:khetipati/constant/colors.dart';
import 'package:khetipati/screens/LoginRegisterPage/login.dart';
import 'dart:async';

import 'package:khetipati/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 2000), () {
      // set your desired delay time here
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGreen,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/applogo.png',
            width: MediaQuery.of(context).size.width / 1.5,
            fit: BoxFit.scaleDown),
      ),
    );
  }
}
