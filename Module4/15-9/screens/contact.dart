import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqfliteex11/database/dbhelper.dart';
import 'package:sqfliteex11/widgets/MyDrawer.dart';
import 'package:image_picker/image_picker.dart';
import '../color.dart';

class AddContact extends StatefulWidget
{
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact>
{
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();
  String currentCategory = "";
  List<String> allCategoryData = [];
  final ImagePicker _picker = ImagePicker();
  File? imageFile;
  late Future<Uint8List> imageBytes;
  final dbHelper = MyDb.instance;
  @override
  void initState() {
    // TODO: implement initState
    _viewcategorydata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: ListView(
        children: [
          SizedBox(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(key: formGlobalKey, child: Column(children:
              [
                SizedBox
                  (
                  height: 20,
                ),
                  InkWell
                    (
                      onTap: () async
                      {

                        final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

                        if(pickedFile!=null)
                        {

                          imageBytes = pickedFile.readAsBytes();
                          setState(()
                          {
                            imageFile = File(pickedFile.path);
                          });

                        }


                      },
                      child: imageFile == null?
                      CircleAvatar(
                        backgroundColor: MyColors.primaryColor,
                        minRadius: 50,
                        child: Icon(
                          Icons.image,
                          color: Colors.white,
                        ),
                      ):CircleAvatar(
                        backgroundImage: Image.file(
                          imageFile!,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ).image,
                        minRadius: 100,
                      ),

                    ),
                SizedBox
                  (
                  height: 20,
                ),
                TextFormField
                  (
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.greenAccent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: MyColors.primaryColor, width: 1.0),
                    ),
                    hintText: 'First Name',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                  ),
                  controller: _firstName,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Enter First Name';
                    }
                    return null;
                  },
                ),
                SizedBox
                  (
                  height: 20,
                ),

                TextFormField
                  (
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.greenAccent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: MyColors.primaryColor, width: 1.0),
                    ),
                    hintText: 'Last Name',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                  ),
                  controller: _lastName,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Enter Last Name';
                    }
                    return null;
                  },
                ),
                SizedBox
                  (
                  height: 20,
                ),
                TextFormField
                  (
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.greenAccent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: MyColors.primaryColor, width: 1.0),
                    ),
                    hintText: 'Enter Email',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                  ),
                  controller: _email,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Enter Email';
                    }
                    return null;
                  },
                ),
                SizedBox
                  (
                  height: 20,
                ),
                TextFormField
                  (
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.greenAccent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: MyColors.primaryColor, width: 1.0),
                    ),
                    hintText: 'Mobile Number',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                  ),
                  controller: _mobile,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                    {
                      return 'Enter Mobile Number';
                    }
                    return null;
                  },
                ),
                SizedBox
                  (
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MyColors.primaryColor),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      items: allCategoryData
                          .map((String value)
                      {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (selectedItem) => setState(()
                      {
                        currentCategory = selectedItem!;
                      }),
                      hint: Text("Select Category "),
                      value: currentCategory.isEmpty ? null : currentCategory,
                    ),
                  ),
                ),
                SizedBox
                  (
                    height: 20,
                  ),
                TextButtonTheme(
                  data: TextButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          MyColors.primaryColor),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate())
                      {
                        _insertcontact();
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )

              ])),
            ),
          ),
        ],
      ),
    );
  }

  void _viewcategorydata() async
  {

    final allRows = await dbHelper.queryAllRows();
    if (kDebugMode)
    {
      print('query all rows:');
    }
    for (var element in allRows)
    {
      allCategoryData.add(element["category_name"]);

    }
    setState(() {});


  }

  void _insertcontact()async
  {
    var base64image;

    if(imageFile!.exists()!=null)
    {
      base64image = base64Encode(imageFile!.readAsBytesSync().toList());
    }

    Map<String, dynamic> row =
    {
      MyDb.columnName: _firstName.text.toString(),
      MyDb.columnLName: _lastName.text.toString(),
      MyDb.columnMobile: _mobile.text.toString(),
      MyDb.columnEmail: _email.text.toString(),
      MyDb.columnCategory : currentCategory,
      MyDb.columnProfile :  base64image,

    };
    print('insert data in table');
    currentCategory="";
    final id = await dbHelper.inserttabledata(row);
    print('inserted row id: $id');
    _viewcategorydata();
  }
}
