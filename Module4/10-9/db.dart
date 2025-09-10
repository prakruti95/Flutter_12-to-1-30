import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class Mydb
{
  late Database db;

  Future open() async
  {
    var dbpath = await getDatabasesPath();//path system
    String path = join(dbpath,'tops.db');
    print(path);

    db = await openDatabase(path,version: 1,
        onCreate:(Database db,int version) async
       {
          db.execute
            (
              '''
            
             CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          fname varchar(255) not null,
                          lname varchar(255) not null,
                          email varchar(255) not null
                      );

                     '''
          );
       });
    print("table created");
  }

  Future<Map<dynamic, dynamic>?>getstudent(String email)async
  {
    List<Map> maps = await db.query('students',where: 'email = ?',whereArgs:[email]);
    if(maps.length>0)
    {
      return maps.first;
    }
    return null;
  }
}