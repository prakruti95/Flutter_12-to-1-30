import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dbhelper.dart';

class MyRepo
{
  static const String viewApi = 'https://prakrutitech.xyz/Autosync/view.php';
  static const String insertApi = 'https://prakrutitech.xyz/Autosync/insert.php';

  //view data from API
  static Future<List<dynamic>> getdata() async
  {
    final response = await http.get(Uri.parse(viewApi));
    if (response.statusCode == 200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception('Failed to load data');
    }
  }
//Insert data into API
  static Future<bool> insertData(Map<String, dynamic> user) async
  {

      try
      {
        final response = await http.post(
          Uri.parse(insertApi),
          body: {
            'id': user['id'].toString(),
            'name': user['name'],
            'email': user['email'],
            'password': user['password'],
          },
        );
        if (response.statusCode == 200)
        {
          return true;
        }
        else
        {
          return false;
        }


      }
      catch(e)
      {
        print(e);
        return false;
      }



  }

  // Sync Offline Data
  static Future<void> syncOfflineData() async
  {
    final db = await DBHelper.initializeDB();
    final offlineUsers = await db.query('users', where: 'isSynced = 0');

    for (var user in offlineUsers) {
      bool success = await insertData(user);
      if (success) {
        await DBHelper.updateUser({'id': user['id'], 'isSynced': 1});
      }
    }
  }


}