import 'dart:io';

void main()
{
  var uname="dhaval";
  var Mypass="1234";
  print("Enter Your Name :");
  String name=stdin.readLineSync().toString();

  print("Enter Your pass :");
  String pass=stdin.readLineSync().toString();

  if(uname==name && pass==Mypass){
    var table_no;
    print("Enter Table No:");
    table_no=double.parse(stdin.readLineSync().toString());

    List<String> orderItem=[];
    double total=0;
    while(true){
      print("Menu");
      print("0.Exit");
      print("1. Pizza - ₹120");
      print("2. Burger - ₹90");
      print("3. Sandwich - ₹100");
      print("4. Pav Bhaji - ₹130");
      print("5. Chole Bhature - ₹140");
      print("6. Vadapav - ₹80");
      int choice;
      print("Enter your Choice:");

      choice=int.parse(stdin.readLineSync().toString());
      switch(choice){
        case 1:
          total+=120;
          orderItem.add("Pizza");
          print("Pizaa Added");


        case 2:
          total+=90;
          orderItem.add("Burger");
          print("Burger Added");

        case 3:
          total+=100;
          orderItem.add("Sandwich");
          print("Sandwich Added");

        case 4:
          total+=130;
          orderItem.add("Pav Bhaji");
          print(" Pav Bhaji  Added");

        case 5:
          total+=140;
          orderItem.add("Chole Bhature");
          print("Chole Bhature ");

        case 6:
          total+=80;
          orderItem.add("Vadapav");
          print("Vadapav");

        case 0:
          print("Order Completed.");
          print("Table No:$table_no");
          for(String item in orderItem){
            print("$item");
          }
          print("Total Bill: ₹$total");

          var file=File("D://c.txt");
          String data="Table No:$table_no \n item:$orderItem \n Bill:$total";
          file.writeAsString(data);
          print("Success");
          //exit(0);
          return ;
        default:
          print("Invalid Choice");
      }
    }

  }else{
    print("Invalid Username or Password");
  }
}