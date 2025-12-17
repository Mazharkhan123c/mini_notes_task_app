import 'dart:math';
import 'dart:async';

import 'package:mini_notes_task_app/models/notes.dart';

class NotesService {
  Future<List<Notes>> fetchNotes() async {
    await Future.delayed(Duration(milliseconds: 1200 + Random().nextInt(800)));

    if (Random().nextDouble() < 0.2) {
      throw Exception("Failed to load notes (simulated).");
    }

    return [
      Notes(title: "Shopping List", content: "Milk, Eggs, Bread"),
      Notes(title: "Work Tasks", content: "Meeting at 10 AM\nPrepare report"),
      Notes(title: "Ideas", content: "Build a Flutter app"),
    ];
  }
}
