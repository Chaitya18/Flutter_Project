import 'package:sqflite/sqflite.dart';
import 'dbhelper.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;

  Future<Database?> get mydatabase async {
    if (_database != null) {
      return _database;
    } else {
      _database = _databaseConnection.setDatabase() as Database;
    }
  }

  insertData(tablename, data) async {
    var con = await mydatabase;
    return await con!.insert(tablename, data);
  }

  getData(table) async {
    var con = await mydatabase;
    return await con!.query(table);
  }

  readSingleData(table, id) async {
    var con = await mydatabase;
    return await con!.query(table, where: "id = ?", whereArgs: id);
  }

  updateData(tablename, data) async {
    var con = await mydatabase;
    return await con!
        .query(tablename, where: "id = ?", whereArgs: [data["id"]]);
  }

  deleteData(table, data) async {
    var con = await mydatabase;
    return await con!.query(table, where: "id = ?", whereArgs: [data["id"]]);
  }
}
