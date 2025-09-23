import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/dashboardscreen.dart';

import 'login.dart';

class AddproductScreen extends StatefulWidget
{
  const AddproductScreen({super.key});

  @override
  State<AddproductScreen> createState() =>_AddproductScreenState();
}

class _AddproductScreenState extends State<AddproductScreen>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();



  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Add Product"),),
      body: Center
        (
        child:  Column
          (
          children:
          [
            TextField(controller: pname,decoration: InputDecoration(hintText: "Enter Product Name"),),
            SizedBox(height: 10,),
            TextField(controller: pprice,decoration: InputDecoration(hintText: "Enter Product Price")),
            SizedBox(height: 10,),
            TextField(controller: pdes,decoration: InputDecoration(hintText: "Enter Product Description")),
            SizedBox(height: 10,),

            ElevatedButton(onPressed: ()
            {
              String name = pname.text.toString();
              String price = pprice.text.toString();
              String des = pdes.text.toString();


              addproduct(name,price,des);

              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));

            }, child: Text("Add Product")),


          ],
        ),
      ),
    );
  }

  addproduct(var name,var price,var des)
  {
    var url = Uri.parse("https://prakrutitech.xyz/API/productinsert.php");

    http.post
      (
        url,
        body:
        {
          "product_name": name,
          "product_price":price,
          "product_description":des

        });
  }
}

