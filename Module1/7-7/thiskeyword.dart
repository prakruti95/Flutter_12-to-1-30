class Student
{
    //data memebers
    int id=0;
    String name="";

    //constructor-para
    Student({var id,var name})
    {
        this.id = id;
        this.name = name;
    }

    display()
    {
      print("Your id is $id");
      print("Your name is $name");
    }


}
void main()
{
    Student s1 = Student(name:"dhaval",id:101);
    Student s2 = Student(id:102,name:"xyz");
    s1.display();
    s2.display();
}