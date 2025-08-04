import 'package:hive/hive.dart';

part 'note_model.g.dart';

// Create a TypeAdaptor for NoteModel
@HiveType(typeId: 0)  // Say to the BuildRunner to generate the code
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.date,
    required this.color,
    required this.title,
    required this.subTitle,
  });
}
