//4356
import 'dart:io';

void main()
{
  int max = 0;

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  while(num>0)
  {
      int rem = num % 10;

      if(rem>max)
      {
         max = rem;
      }

      num = num ~/ 10;

  }

  print("Max number is $max");
}
