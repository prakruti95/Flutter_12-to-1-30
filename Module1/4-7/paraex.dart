class Student
{
  var i;
  var n;

  //parameterized
  Student(var id,var name)
  {
    i = id;
    n = name;
  }

  void display()
  {
      print("Your id is $i and Your Name is $n");
  }
}
void main()
{
    Student s1 = Student(101,"dhaval");
    s1.display();
}