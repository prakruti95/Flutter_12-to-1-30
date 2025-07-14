class Student
{
  var _id;
  var _name;

  //setter-getter
  get id => _id;

  set id(value)
  {
    _id = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }
}
void main()
{
    Student s1 = Student();

    //set
    // s1.id(101);
    // s1.name("xyz");

    s1.id=101;
    s1.name="xyz";

    //get
    print(s1.id);
    print(s1.name);




   // print("${s1.id} and ${s1.name}");



}