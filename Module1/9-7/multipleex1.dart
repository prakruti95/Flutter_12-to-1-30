import 'dart:io';

class A
{
    a(int n)
    {

    }
}
class B
{
  b(int n)
  {

  }
}
class C implements A,B
{

  int a2=0,b2=0,c2=0;

  @override
  a(int n)
  {
    a2=n;
  }

  @override
  b(int n)
  {
      b2=n;
  }

  c()
  {
    c2 = a2+b2;
    print(c2);
  }

}

void main()
{
  print("Enter value for a: ");
  int a1 = int.parse(stdin.readLineSync().toString());
  print("Enter value for b: ");
  int b1 = int.parse(stdin.readLineSync().toString());

  var c = C();
  c.a(a1);
  c.b(b1);

  c.c();

}