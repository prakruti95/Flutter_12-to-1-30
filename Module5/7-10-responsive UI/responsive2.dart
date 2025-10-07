import 'package:flutter/material.dart';



class ResponsiveHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive UI')),
      body: LayoutBuilder
        (
        builder: (context, constraints)
        {
          // Check if width is greater than 600 pixels (tablet breakpoint)
          if (constraints.maxWidth > 600)
          {
            return TabletLayout();
          }
          else
          {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

// ----------------------------
// Mobile Layout
// ----------------------------
class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    final size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.2,
          color: Colors.blue,
          child: Center(child: Text('Header \n $width and $height', style: TextStyle(color: Colors.white, fontSize: 24))),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(6, (index) {
              return Container(
                color: Colors.blue[100 * ((index % 8) + 1)],
                child: Center(child: Text('Item ${index + 1}')),
              );
            }),
          ),
        ),
      ],
    );
  }
}

// ----------------------------
// Tablet Layout
// ----------------------------
class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Row(
      children: [
        Container(
          width: 250,
          color: Colors.indigo,
          child: Center(
            child: Text(
              'Sidebar',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.indigo[100],
                child: Center(child: Text('Header', style: TextStyle(fontSize: 24))),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
                  padding: EdgeInsets.all(16),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(12, (index) {
                    return Container(
                      color: Colors.indigo[100 * ((index % 8) + 1)],
                      child: Center(child: Text('Item ${index + 1}')),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

