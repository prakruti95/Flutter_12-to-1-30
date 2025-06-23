void main()
{
  int age = 15;

  if(age>18)
  {
      print("Eligible to vote");

      //nested if
      if(age>60)
      {
        print("Senior Citizen Category");
      }
      else
      {
        print("Young Age Category");
      }

  }
  else
  {
    print("Not Eligible to vote");
  }

}