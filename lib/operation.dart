import 'package:crud/models/notas.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operation {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), "note.db"),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE notes(id INTEGRER PRIMARY KEY, title TEXT,content TEXT)",
      );
    });
  }

  static Future<void> insert(Note note) async {
    Database database = await _openDB();
    return database.insert("notes", note.toMap());
  }

  static Future<List<Note>> notes() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> notesMap = await database.query("notes");

    for (var n in notesMap) {
      print("____" + n["title"]);
    }
    return List.generate(
        notesMap.length,
        (i) => Note(
            id: notesMap[i]["id"],
            title: notesMap[i]["title"],
            content: notesMap[i]["content"]));
  }
}
