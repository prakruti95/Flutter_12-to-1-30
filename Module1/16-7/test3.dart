import 'dart:io';

void main()
{

  //Exception Handling
  //try-cath-throw-finally

  try
  {
    //logic
    var fout = File("E://b.txt");
    fout.writeAsString("Hello");

  }
  catch(e)
  {
      print(e);
  }
  finally
  {
    print("success");
    //code
  }






}