import 'dart:io';

//with para with return type
int details(int a,int b)
{
  int c= a+b;

  return c;
}
void main()
{
    print(details(6,5));
    print(details(5,5));
    print(details(6,6));
}