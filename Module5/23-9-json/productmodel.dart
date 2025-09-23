import 'package:flutter/material.dart';

class ProductModel extends StatelessWidget
{
  List list;
  ProductModel({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: list.length,
        itemBuilder:(context,index)
        {
            return ListTile
              (
                  title: Text(list[index]["product_name"]),
                  subtitle:Column(children:
                  [
                   Text(list[index]["product_price"]),
                    Text(list[index]["product_description"]),
                  ],)

              );
        }
      );
  }
}
