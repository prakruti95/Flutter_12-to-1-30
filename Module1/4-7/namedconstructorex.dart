class Student
{

  Student()
  {
    print("1");
  }

  Student.a()
  {
    print("2");
  }
  Student.b()
  {
    print("3");
  }

}
void main()
{
  Student s1 = Student();
  Student s2 = Student.a();
  Student s3 = Student.b();

}