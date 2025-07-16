import 'dart:async';
import 'dart:io';

int total = 0;
addItem(int price)
{
  total += price;
  print("Total Bill is: $total");
}
showMenu() {
  print("Enter UserName: ");
  var userName = stdin.readLineSync().toString();
  print("Enter Password: ");
  var userPasswd = stdin.readLineSync().toString();

  String uname = "tops";
  String passwd = "1234";

  if (userName == uname && userPasswd == passwd) {
    print("Enter Table Number: ");
    var tblNo = int.parse(stdin.readLineSync().toString());

    List<String> items = [];

    while(true)
    {
      print("\t****** Menu Items: ****** \n 1. Pizza 180Rs \n 2. Hot dog 180Rs \n 3. Sandwich 150Rs \n 4. Garlic Bread 250Rs \n 5. Manchurian 250Rs \n 6. Potato Twister 250Rs \n Press 0 for Exist");
      var item = int.parse(stdin.readLineSync().toString());

      switch(item)
      {
        case 1:
          items.add("Pizza");
          addItem(180);
         break;

        case 2:
          items.add("Hot dog");
          addItem(180);
          break;

        case 3:
          items.add("Sandwich");
          addItem(150);
          break;

        case 4:
          items.add("Garlic Bread");
          addItem(250);
          break;

        case 5:
          items.add("Manchurian");
          addItem(250);
          break;

        case 6:
          items.add("Potato Twister");
          addItem(250);
          break;

        case 0:
          print("Order Completed: ");
          print("Table No: $tblNo");
          String data = "\n Table no. $tblNo \n values $items \n Total Bill: $total";

          // Timer(Duration(seconds: 3),()=>
          // {
          //   print(data),
          //   exit(0)
          //
          // });

         // test123();
          break;

          //break;
        default:print("Invalid Input");
      }

    }
  } else {
    print("Invalid User name and password");
  }
}



void main() {
  showMenu();

}