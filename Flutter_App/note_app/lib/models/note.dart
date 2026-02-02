import 'package:isar/isar.dart';

// this line should generate a schema file
// we should run this command to generate the file: dart run build_runner build
part 'note.g.dart';

@collection
class Note {
  Id id = Isar.autoIncrement;

  late String title;

  late String content;

  late DateTime createdAt;

  DateTime? updatedAt;
}
