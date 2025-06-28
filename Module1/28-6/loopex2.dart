//4356
import 'dart:io';

void main()
{
  int fdigit = 0;
  int ldigit = 0;
  int sum=0;

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());//1234

  ldigit = num % 10;//4

  while(num>0)
  {
     if(num>9)
     {
        num = num ~/ 10;
     }

     fdigit = num;
     num=num~/10;

  }

  sum = fdigit+ldigit;

  print("Max number is $sum");
}
