import 'package:flutter/material.dart';

class CheckBoxEx extends StatefulWidget
{
  const CheckBoxEx({super.key});

  @override
  State<CheckBoxEx> createState() => _CheckBoxExState();
}

class _CheckBoxExState extends State<CheckBoxEx>
{
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Checkbox Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    CheckboxListTile
                      (
                        title: Text("Select One"),
                        value: valuefirst,
                        onChanged: (value)
                        {
                            setState(() {
                              this.valuefirst = value!;

                            });
                        }
                      ),

                    CheckboxListTile
                      (
                        secondary: const Icon(Icons.alarm),
                        title: Text("Select Two"),
                        subtitle: Text("xyz"),
                        value: valuesecond,
                        onChanged: (value)
                        {
                            setState(() {
                              this.valuesecond = value!;
                            });
                        }
                    )

                ],
              ),
          ),
      );
  }
}
