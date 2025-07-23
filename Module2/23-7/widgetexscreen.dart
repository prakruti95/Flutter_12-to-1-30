import 'package:flutter/material.dart';

class MyScreen1 extends StatefulWidget
{
  @override
  MyScreen1State createState() => MyScreen1State();
}
class MyScreen1State extends State
{
  int value=0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Counter App"),),
      body: Center
        (
        child: Column
          (
          children:
          [

            Text("Counter Value :$value"),
            SizedBox(height: 10),
            ElevatedButton
              (
                onPressed: ()
                {
                  setState(()
                  {
                    value++;
                  });

                  print("click me");

                },child: Text("Count"))


          ],
        ),
      ),
    );
  }

}



// class MyScreen1 extends StatefulWidget
// {
//   @override
//   State<MyScreen1> createState() => _MyScreen1State();
// }
//
// class _MyScreen1State extends State<MyScreen1> {
//   int value=0;
//
//   @override
//   Widget build(BuildContext context)
//   {
//       return Scaffold
//         (
//           appBar: AppBar(title: Text("Counter App"),),
//           body: Center
//             (
//               child: Column
//                 (
//                   children:
//                   [
//
//                     Text("Counter Value :$value"),
//                     SizedBox(height: 10),
//                     ElevatedButton
//                       (
//                         onPressed: ()
//                         {
//
//                             value++;
//                             print("click me");
//
//                         },child: Text("Count"))
//
//
//                   ],
//                 ),
//             ),
//         );
//   }
// }
//
//
