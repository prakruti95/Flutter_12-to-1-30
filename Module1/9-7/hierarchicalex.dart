class Bank
{
    bank()
    {
      print("banking");
    }
}
class Current extends Bank
{
  current()
  {
    print("current");
  }
}
class Save extends Bank
{
  save()
  {
    print("saving");
  }
}
void main()
{
    var c1 = Current();
    var s1 = Save();

    c1.current();
    s1.save();
    s1.bank();
}