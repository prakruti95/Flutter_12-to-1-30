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
class C extends B
{
  c()
  {
    print("c called");
  }
}
class D extends C
{
  d()
  {
    print("d called");
  }
}
void main()
{
    D d = D();

    d.a();
    d.b();
    d.c();
    d.d();
}