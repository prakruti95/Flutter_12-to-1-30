import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

void main()
{

  //Uint8List bytes = Uint8List.fromList([10,20,30]);
  Uint8List bytes = Uint8List.fromList(utf8.encode("string"));
  var fout = File("E://a.txt");

  fout.writeAsBytes(bytes);
  print("success");



}