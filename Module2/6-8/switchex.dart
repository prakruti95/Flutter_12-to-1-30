import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  const SwitchEx({super.key});

  @override
  State<SwitchEx> createState() => _SwitchExState();
}

class _SwitchExState extends State<SwitchEx>
{
    bool myvalue = false;
    String textValue="";

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Switch Example"),),
        body: Center
          (
            child:Column
              (

                children:
                [
                  Switch
                    (
                    value: myvalue,
                    onChanged: toggleswitch,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                  ),

                  SizedBox(height: 10,),

                  Text("Value is $textValue")


                ],
              )

          ),
      );
  }

  toggleswitch(bool value)
  {
      if(myvalue == false)
      {
          setState(() {

            myvalue = true;
            textValue = 'Switch Button is ON';
          });
      }
      else
      {
        setState(() {
          myvalue = false;
          textValue = 'Switch Button is OFF';
        });
      }
  }
}
