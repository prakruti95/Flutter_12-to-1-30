import 'dart:io';

void main()
{
  int num;

  print("Enter Any Number: ");
  num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:print("\n Your Language is English");
    //break;

    case 2:print("\n Your Language is Hindi");
    //break;

    case 3:print("\n Your Language is Gujarati");
    //break;

    default:print("Your Number is not valid");
  }

}