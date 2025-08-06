import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
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

  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;


  @override
  void initState()
  {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result)
    {

      if (result.contains(ConnectivityResult.mobile))
      {
        Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()
        )));
      }

      else if (result.contains(ConnectivityResult.wifi))
      {
        Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()
        )));
      }

      else if (result.contains(ConnectivityResult.none))
      {
        shownetworkerror();
      }
    });

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






  void shownetworkerror()async
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );

  }
}
