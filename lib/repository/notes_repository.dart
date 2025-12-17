import 'package:mini_notes_task_app/models/notes.dart';

import '../services/notes_service.dart';

class NotesRepository {
  final NotesService _service = NotesService();

  Future<List<Notes>> getNotes() {
    return _service.fetchNotes();
  }
}
