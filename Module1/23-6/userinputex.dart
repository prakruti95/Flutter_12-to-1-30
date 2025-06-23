import 'dart:io';

void main()
{

  String name;
  String email;
  int salary;

  print("Enter Your Name");
  name = stdin.readLineSync().toString();

  print("Enter Your Email");
  email = stdin.readLineSync().toString();

  print("Enter Your Salary");
  salary = int.parse(stdin.readLineSync().toString());
  //double.parse(source);


  print("Your Name is $name");
  print("Your Name is $email");
  print("Your Name is $salary");
}