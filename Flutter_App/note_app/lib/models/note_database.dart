import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:note_app/models/note.dart';
import 'package:path_provider/path_provider.dart';

class NoteDatabase extends ChangeNotifier {
  // I N I T I L I Z A T I O N   O F   T H E   D A T A B A S E
  static Future<void> initializeIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([NoteSchema], directory: dir.path);
  }

  // L I S T   O F    N O T E S
  final List<Note> currentNotes = [];

  // C R E A T E  N O T E
  Future<void> createNote(String title, String content) async {
    final isar = Isar.getInstance()!;
    final newNote = Note()
      ..title = title
      ..content = content
      ..createdAt = DateTime.now();

    await isar.writeTxn(() async {
      await isar.notes.put(newNote);
    });
  }

  // R E A D  N O T E S
  Future<List<Note>> readNotes() async {
    final isar = Isar.getInstance()!;
    final notes = await isar.notes.where().findAll();
    currentNotes.clear();
    currentNotes.addAll(notes);
    notifyListeners();
    return notes;
  }

  // U P D A T E  N O T E
  Future<void> updateNote(int id, String title, String content) async {
    final isar = Isar.getInstance()!;
    final note = await isar.notes.get(id);
    if (note != null) {
      note.title = title;
      note.content = content;
      note.updatedAt = DateTime.now();

      await isar.writeTxn(() async {
        await isar.notes.put(note);
      });
    }
  }

  // D E L E T E  N O T E
  Future<void> deleteNote(int id) async {
    final isar = Isar.getInstance()!;
    await isar.writeTxn(() async {
      await isar.notes.delete(id);
    });
  }
}
