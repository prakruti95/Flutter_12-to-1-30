void main()
{

  List<String>commontech=[];
  List<String> javatech = ["a","b","c","d"];
  List<String> phptech = ["a","b","c","d"];

  commontech.addAll(javatech);
  commontech.addAll(phptech);

  for(var data in commontech)
  {
    print(data);
  }


}