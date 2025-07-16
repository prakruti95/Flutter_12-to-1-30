import 'dart:io';

import '../4-7/paraex.dart';

void main()
{

    var age = 15;

    checkage(age);



}

void checkage(int age)
{
    if(age<18)
    {
      throw Exception("Message");//or you can pass any class
    }
    else
    {
        print("Eligible to vote");
    }
}