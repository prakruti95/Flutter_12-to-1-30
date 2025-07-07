// final class Color3
// {
//     //you can not inherit final class
// }
class Color1 /*extends Color3*/
{
    var color = "white";
}
class Color2 extends Color1
{
  var color = "black";

  display()
  {
    print(color);
    print(super.color);
  }

}
void main()
{
  Color2 c = Color2();
  c.display();
}