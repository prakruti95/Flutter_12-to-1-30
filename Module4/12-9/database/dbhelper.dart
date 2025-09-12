import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDb
{
  //database details
  static final _dbname = "tops1.db";
  static final _dbversion = 1;

  //category table details
  static final _tablename = "category";
  static final _idcol = "id";
  static final catname = "category_name";

 //private constructor
 MyDb._privateconstructor();

 //database object
 Database? db;

 //initialization
 static final MyDb instance = MyDb._privateconstructor();

 //get database details
  Future<Database> get database async => db ??= await _initDatabase();

  _initDatabase()async
 {
   Directory directorypath = await getApplicationDocumentsDirectory();
   print(directorypath);
   
   String finalpath = join(directorypath.path,_dbname);
   print(finalpath);
   
  return await openDatabase(finalpath,version: _dbversion,onCreate: _oncreate);
   
 }

  Future<void> _oncreate(Database db,int version)async
  {
     await db.execute
       ('''
          CREATE TABLE $_tablename 
          (
            $_idcol INTEGER PRIMARY KEY,
            $catname TEXT NOT NULL 
          )
        ''');
  }

  //insert
  Future<int> insertdata(Map<String, dynamic> row)async
  {
    Database? db = await instance.database;
    return await db.insert(_tablename,row);
  }


  //view
 //update
 //delete




}