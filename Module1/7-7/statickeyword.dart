class Clg
{
    var id;
    var name;
    static var clg="Atmiya";//static variable

    Clg(var id,var name)
    {
        this.id=id;
        this.name=name;
    }

    display()
    {
      print("Your id is $id");
      print("Your name is $name");
      print("Your college is $clg");
    }

    static change()
    {
        clg = "VVP";
    }

}
void main()
{
    Clg c1 = Clg(101,"vaishvi");
    Clg c2 = Clg(102,"dhaval");
    Clg c3 = Clg(103,"parin");

    Clg.change();
    // c1.change();
    // c2.change();
    // c3.change();


    c1.display();
    c2.display();
    c3.display();


}