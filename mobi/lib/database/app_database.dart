import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase(){
  getDatabasesPath().then((dbPath){
    final String path = join(dbPath,'bytebank.db');
    openDatabase(path, onCreate:(db,version){
    db.execute('CREATE TABLE usuario('
    'id INTERGER PRIMARY KEY, '
    'name TEXT, '
    'senha TEXT) ');
    }, version: 1);
  });
}

// void save(Contact contact)