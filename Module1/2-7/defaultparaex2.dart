import 'dart:io';

findVolume(int length, {int breadth = 2, int height = 20})
{

  print("Lenght is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
}
void main()
{
  print("Enter Length");
  var len = int.parse(stdin.readLineSync().toString());
  findVolume(len);
  findVolume(10,breadth: 4);
}