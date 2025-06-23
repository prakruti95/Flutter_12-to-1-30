import 'dart:io';

void main()
{

  var a;
  var b;

  print("Enter Your Value For a: ");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter Your Value For b: ");
  b = int.parse(stdin.readLineSync().toString());

  var c = a+b;


  print("Your Value for a is $a");
  print("Your Value for b is $b");
  print("Addition of two value is $c");
}