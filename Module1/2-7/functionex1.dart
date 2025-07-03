import 'dart:io';

//with para without return type
details(String uname,String pass)
{
    if(uname=="tops" && pass=="1234")
    {
        print("Logged in Succesfullly");
    }
    else
    {
      print("Invalid Credentials");
    }
}
void main()
{
  print("Enter Your Username");
  String uname = stdin.readLineSync().toString();
  print("Enter Your Password");
  String pass = stdin.readLineSync().toString();

  details(uname,pass);
}