import 'package:flutter/material.dart';
import 'package:mini_notes_task_app/models/notes.dart';

import '../repository/notes_repository.dart';

class NotesViewModel extends ChangeNotifier {
  final NotesRepository _repo = NotesRepository();

  List<Notes> notes = [];
  bool isLoading = false;
  String? error;

  Future<void> fetchNotes() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      notes = await _repo.getNotes();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
