import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
        color: Colors.blue.shade50,
        padding: EdgeInsets.all(16.0),
        child: Row
          (
            children:
            [
                CircleAvatar
                  (
                    radius: 60,
                    backgroundImage: AssetImage("assets/flag1.png"),
                  ),
                  SizedBox(width: 16),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text('John Doe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Flutter Developer', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
      );
  }
}
