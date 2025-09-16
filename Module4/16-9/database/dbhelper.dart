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

  //contact table details
  static final tableContact = 'contact';
  static final columnId1 = '_id';
  static final columnName = 'name';
  static final columnLName = 'lname';
  static final columnMobile = 'mobile';
  static final columnEmail = 'email';
  static final columnCategory = 'cat';
  static final columnProfile = 'profile';



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

     await db.execute
       ('''
          CREATE TABLE $tableContact 
          (
            $columnId1 INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL ,
            $columnLName TEXT NOT NULL ,
            $columnEmail TEXT NOT NULL ,
            $columnMobile TEXT NOT NULL ,
            $columnCategory TEXT NOT NULL, 
            $columnProfile TEXT NOT NULL
          )
        ''');


  }

  //insert category data
  Future<int> insertdata(Map<String, dynamic> row)async
  {
    Database? db = await instance.database;
    return await db.insert(_tablename,row);
  }

  //insert contact data
  Future<int> inserttabledata(Map<String, dynamic> row)async
  {
    Database? db = await instance.database;
    return await db.insert(tableContact,row);
  }
  //view
  Future<List<Map<String, dynamic>>> queryAllRows() async
  {
    Database db = await instance.database;
    return await db.query(_tablename);//select * from category
  }

  Future<List<Map<String, dynamic>>> querycontactRows() async
  {
    Database db = await instance.database;
    return await db.query(tableContact);//select * from contact
  }

//update
 //delete
  Future<int> deleteContact(int id) async
  {
    Database db = await instance.database;
    return await db.delete(tableContact, where: '$columnId1 = ?', whereArgs: [id]);
  }




}