class Student
{
    //data memebers
    var id;
    var name;

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

  print("Your id is ${s1.id} and Your Name is ${s1.name}");
  print("Your id is ${s2.id} and Your Name is ${s2.name}");
  print("Your id is ${s3.id} and Your Name is ${s3.name}");
  print("Your id is ${s4.id} and Your Name is ${s4.name}");


}