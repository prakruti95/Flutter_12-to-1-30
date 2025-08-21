import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContainerEx extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          body: Center
            (
             child: Padding(
               padding: EdgeInsets.all(16.00),
               child: Container
                 (
                  alignment: Alignment.center,
                  color: Colors.deepPurple,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(16.0),

                 child: GestureDetector(
                   onTap: ()
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

                   },
                   child: Text
                      (
                        "Flight",
                        textDirection: TextDirection.ltr,
                        style: TextStyle
                        (
                          decoration: TextDecoration.none,
                          fontSize: 75.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                       ),

                      ),
                 ),
                  // width: 250,
                  // height: 250,
                 ),
             ),
            ),
      );
  }
}
