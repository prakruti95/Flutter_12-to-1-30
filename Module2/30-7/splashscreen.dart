import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test2123/loginscreen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
    Timer(Duration(seconds:3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen())));

  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            //child:Image.asset("assets/tops.png",width: 250,height: 250,)
            child:Lottie.asset('assets/abcd.json'),
          ),
      );
  }
}
