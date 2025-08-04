import 'package:flutter/material.dart';

class RadioButtonEx extends StatefulWidget {
  const RadioButtonEx({super.key});

  @override
  State<RadioButtonEx> createState() => _RadioButtonExState();
}
enum BestTutorSite {javatpoint, w3schools}

class _RadioButtonExState extends State<RadioButtonEx>
{
  BestTutorSite _site = BestTutorSite.javatpoint;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("RadioButton Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  ListTile
                    (
                    title: const Text('www.javatpoint.com'),
                    leading: Radio
                        (

                          value: BestTutorSite.javatpoint,
                          groupValue: _site,
                          onChanged: (value)
                          {
                              setState(() {
                                _site = value!;
                              });

                          }
                        ),
                    ),
                  ListTile
                    (
                      title: const Text('www.w3school.com'),
                        leading: Radio
                          (
                            value: BestTutorSite.w3schools,
                            groupValue:  _site,
                            onChanged: (value)
                            {
                              setState(() {
                                _site = value!;
                              });
                            }
                          ),
                    ),

                ],
              ),
          ),
      );
  }
}
