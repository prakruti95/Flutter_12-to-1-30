import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastEx extends StatelessWidget
{
  const ToastEx({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
       body: Center
         (
          child: ElevatedButton(onPressed: ()
          {
            Fluttertoast.showToast
              (
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0

              );

          }, child: Text("Click Me")),
         ),
      );
  }
}
