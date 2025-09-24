import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/dashboardscreen.dart';
import 'package:test123/updateproduct.dart';
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
                  ],),
                trailing: Wrap
                  (
                   children:
                   [

                      IconButton(onPressed: ()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => UpdateproductScreen
                          (
                            id:list[index]["id"],
                            name:list[index]["product_name"],
                            price:list[index]["product_price"],
                            des:list[index]["product_description"],
                          )));
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: ()
                      {
                        deletedata(list[index]["id"]);
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
                      }, icon: Icon(Icons.delete)),

                   ],
                  ),

              );
        }
      );
  }

  void deletedata(id)
  {
      http.post(Uri.parse("https://prakrutitech.xyz/API/productdelete.php"),body:
      {
          "id":id
      });
  }
}
