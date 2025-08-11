import 'package:flutter/material.dart';

class GridTask extends StatefulWidget
{
  const GridTask({super.key});

  @override
  State<GridTask> createState() => _GridTaskState();
}

class _GridTaskState extends State<GridTask>
{

  List image =
  [
    "https://images.unsplash.com/photo-1713959925337-3a79df64fccd?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBmcnVpdHxlbnwwfHwwfHx8MA%3D%3D",
    "https://png.pngtree.com/png-clipart/20241009/original/pngtree-juicy-fruits-and-vitamins-natural-organic-fruits-png-image_16259640.png",
    "https://images.unsplash.com/photo-1713959925337-3a79df64fccd?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBmcnVpdHxlbnwwfHwwfHx8MA%3D%3D",
    "https://png.pngtree.com/png-clipart/20241009/original/pngtree-juicy-fruits-and-vitamins-natural-organic-fruits-png-image_16259640.png"
  ];

  List text =
  [
      "Apple",
      "Grapes",
      "Apple",
      "Grapes"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("GridView"),),
        body: Center
          (
            child: GridView.builder
              (
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
              (
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
                itemBuilder: (context,index)
                {
                   return ListTile
                     (
                       title:Image.network(image[index],width: 150,height: 200),
                       subtitle:Column
                         (
                            children:
                            [
                                Text(text[index]),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){}, child: Text("Voice"))

                            ],
                         ),
                     );
                },
                itemCount:image.length,

              ),
          ),

      );
  }
}
