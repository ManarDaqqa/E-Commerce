import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
class DbController {
  static final DbController _instance = DbController._internal();

  late Database _database;
  DbController._internal();
  factory DbController(){
    return _instance;
  }

  Future<void> initDatabase () async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,'app_db.sql');
    _database = await openDatabase(
        path,
        version: 1,
        onOpen: (Database db){},
        onCreate: (Database db,int version) async{
         await db.execute('Create Table users('
              'id int Primary key Autoincrement,'
              'email TEXT,'
              'password TEXT'
              ')');

         await db.execute('Create Table Products('
             'id int Primary key Autoincrement,'
             'name TEXT,'
             'info TEXT,'
             'user_id int,'
             'FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE NO ACTION'
             ')');

        },
        onUpgrade: (Database db, int oldVersion,int newVersion){},
        onDowngrade: (Database db, int oldVersion,int newVersion){}
    );
  }
}