Future<void> tops(int sec,String msg)
{
  return Future.delayed(Duration(seconds: 5),() =>  print("Is"));
  // {
  //
  // });
}

void main()async
{
  print("Life");
  await tops(3,"Is");
  print("Good");
}