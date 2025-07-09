class A
{
  a()
  {
    print("a called");
  }
}
class B extends A
{
  b()
  {
    print("b called");
  }
}
class C extends A
{
  c()
  {
    print("c called");
  }
}
class D implements B,C
{
  d()
  {
    print("d called");
  }

  @override
  a()
  {
    print("a called");
  }

  @override
  b()
  {
    print("b called");
  }

  @override
  c()
  {
    print("c called");
  }
}
void main()
{
  var d1 = D();
  d1.a();
  d1.b();
  d1.c();
  d1.d();
}