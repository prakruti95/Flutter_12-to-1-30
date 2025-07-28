import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget
{
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
{

  bool _ishappy = true;

  @override
  Widget build(BuildContext context)
  {
    return Container
      (
        child: Column
          (
            children:
            [
                Text('Current Mood:', style: TextStyle(fontSize: 18)),
                Text(_ishappy ? "😊 Happy" : "😔 Sad"),
                TextButton(onPressed: ()
                {
                    _togglemood();

                }, child: Text("Change Mood"))

                //ToggleButtons(children: [],isSelected: [],)


            ],
          ),
      );
  }

   _togglemood()
  {
    setState(() {

      _ishappy = !_ishappy;

    });
  }
}
