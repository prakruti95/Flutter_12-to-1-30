import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/dashboardscreen.dart';

import 'login.dart';

class UpdateproductScreen extends StatefulWidget
{
    var id;
    var name;
    var price;
    var des;

    UpdateproductScreen({required this.id,required this.name,required this.price,required this.des});

  @override
  State<UpdateproductScreen> createState() =>_UpdateproductScreenState();
}

class _UpdateproductScreenState extends State<UpdateproductScreen>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();

  @override
  void initState()
  {
    // TODO: implement initState
   pname.text = widget.name;
   pprice.text = widget.price;
   pdes.text = widget.des;
  }

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


              updateproduct(name,price,des,widget.id);

              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));

            }, child: Text("Update Product")),


          ],
        ),
      ),
    );
  }



 updateproduct(String name, String price, String des, id)
  {
    var url = Uri.parse("https://prakrutitech.xyz/API/productupdate.php");

    http.post
      (
        url,
        body:
        {
          "id":id,
          "product_name": name,
          "product_price":price,
          "product_description":des

        });
  }
}

