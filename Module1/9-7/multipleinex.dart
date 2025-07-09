class A
{
  a()
  {

  }
}
class B
{
  b()
  {

  }
}
class C implements A,B
{

  c()
  {
    print("C Called");
  }

  @override
  a()
  {
    print("A Called");
  }

  @override
  b()
  {
    print("B Called");
  }

}
void main()
{
    var c = C();
    c.a();
    c.b();
    c.c();
}