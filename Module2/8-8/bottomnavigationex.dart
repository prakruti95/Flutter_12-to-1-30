import 'package:flutter/material.dart';

class Bottomnavigationex extends StatefulWidget 
{
  const Bottomnavigationex({super.key});

  @override
  State<Bottomnavigationex> createState() => _BottomnavigationexState();
}

class _BottomnavigationexState extends State<Bottomnavigationex> 
{
  int _selectedIndex = 0;
  static List _widgetOptions =
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

  ];
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center( child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar:BottomNavigationBar
          (
            items:
            [
              BottomNavigationBarItem
               (
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green
              ),
              BottomNavigationBarItem
                (
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green
              ),
              BottomNavigationBarItem
                (
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5




        ),
      ) ;
  }

   _onItemTapped(int value)
   {
    setState(() {
      _selectedIndex = value;
    });
   }
}
