class Student
{
    //data memebers
    var id;
    var name;

    display()
    {
      print("Your id is $id and Your Name is ${name}");
    }

}
void main()
{
    //object creation
    //var s1 = Student();
    //Student s2 = Student();
    //Student s3 = new Student();

  Student s1 = Student();
  s1.id=101;
  s1.name="vaishvi";

  Student s2 = Student();
  s2.id=102;
  s2.name="Mahek";

  Student s3 = Student();
  s3.id=103;
  s3.name="Dhaval";

  Student s4 = Student();
  s4.id=104;
  s4.name="Parin";

  s1.display();
  s2.display();
  s3.display();
  s4.display();



}