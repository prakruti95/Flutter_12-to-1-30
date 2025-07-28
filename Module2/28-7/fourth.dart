import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Powered by Flutter',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
