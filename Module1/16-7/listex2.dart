void main()
{

  List<String> name = ["a","b","c","d"];

  name.add("p");
  name.add("q");
  name.add("r");
  name.add("s");
  name.remove("s");
  name.removeAt(3);
 // name.addAll(iterable);

  for(var data in name)
  {
      print(data);
  }


}