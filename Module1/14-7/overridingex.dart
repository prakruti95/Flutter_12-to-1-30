class RBI
{
    int rate()
    {
      return 0;
    }
}
class SBI extends RBI
{
  int rate()
  {
    return 7;
  }
}
class ICICI extends RBI
{
  int rate()
  {
    return 8;
  }
}
class AXIS extends RBI
{
  int rate()
  {
    return 9;
  }
}
void main()
{
  // SBI s = SBI();
  // ICICI i = ICICI();
  // AXIS a = AXIS();
  RBI r;


  r = SBI();
  print(r.rate());

  r = ICICI();
  print(r.rate());

  r = AXIS();
  print(r.rate());


}