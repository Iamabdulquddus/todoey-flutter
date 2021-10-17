import 'package:sqflite/sqflite.dart';

class StoreData {
  static final StoreData instance = StoreData._init();
    static late Database _database;

  StoreData._init();

  Future<Database> get database async {
   return _database;
  }

  Future close() async {
    final db = await instance.database;
    db.close();

  }

}