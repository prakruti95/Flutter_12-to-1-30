import 'package:flutter/material.dart';

class NavigationDrawerEx extends StatefulWidget
{
  const NavigationDrawerEx({super.key});

  @override
  State<NavigationDrawerEx> createState() => _NavigationDrawerExState();
}

class _NavigationDrawerExState extends State<NavigationDrawerEx> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Example"),),
        body: Center(child: Text("My Data"),),
        drawer: Drawer
          (
              child: ListView
                (
                  padding: EdgeInsets.zero,
                  children:
                  [
                      UserAccountsDrawerHeader
                        (
                          accountName: Text("Abhishek Mishra"),
                          accountEmail: Text("abhishekm977@gmail.com"),
                          currentAccountPicture: CircleAvatar
                            (
                            backgroundColor: Colors.orange,
                            child: Text
                              (
                                "A",
                                style: TextStyle(fontSize: 40.0),
                              ),
                          ),
                        ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                    ),

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                    ),




                  ],
                ),
          ),
    );
  }
}
