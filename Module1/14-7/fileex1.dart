import 'dart:io';

void main()
{
  String mypass = "1234";
  String mypass2 = "5678";

  var fout = File("E://a.txt");
  //String data = "\n Your Name $name \n";
  fout.writeAsString("Hello");

 // fout.writeAsBytes(bytes);
  print("success");

  if(mypass==mypass2)
  {

  }

}