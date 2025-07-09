class A
{
  a()
  {
    //body part
  }

}
class B
{
  b()
  {

  }
}
abstract class D
{
    d()
    {

    }
    d1();
}
class C implements A,B
{

  c()
  {
    print("C Called");
  }

  @override
  a() {
    // TODO: implement a
    throw UnimplementedError();
  }

  @override
  b() {
    // TODO: implement b
    throw UnimplementedError();
  }



}
void main()
{
    var c = C();
    c.a();
    c.b();
    c.c();
}
//you can not create object of abstract class
