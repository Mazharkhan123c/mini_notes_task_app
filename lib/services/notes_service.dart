import 'dart:math';
import 'dart:async';

import 'package:mini_notes_task_app/models/notes.dart';

class NotesService {
  Future<List<Notes>> fetchNotes() async {
    await Future.delayed(Duration(milliseconds: 1200 + Random().nextInt(800)));

    if (Random().nextDouble() < 0.2) {
      throw Exception("Failed to load notes.");
    }

    return [
      Notes(title: "Shopping List", content: "Milk, Eggs, Bread"),
      Notes(title: "Morning Routine", content: "Wake up, Exercise, Breakfast"),
      Notes(title: "Work Tasks", content: "Meeting at 10 AM\nSend email"),
      Notes(title: "Flutter Study", content: "Learn State Management"),
      Notes(title: "Business Ideas", content: "Cattle Farming App"),
      Notes(title: "Daily Goals", content: "Complete assignment"),
      Notes(title: "Health Notes", content: "Drink water, walk 30 mins"),
      Notes(title: "Weekend Plan", content: "Visit family"),
      Notes(title: "Office Reminder", content: "Submit report"),
      Notes(title: "Learning Log", content: "Clean Architecture basics"),
      Notes(
        title: "Books to Read",
        content: "Clean Code, Pragmatic Programmer",
      ),
      Notes(title: "App Features", content: "Login, Dashboard, Reports"),
      Notes(title: "Milk Records", content: "Morning: 12L, Evening: 10L"),
      Notes(title: "Expenses", content: "Feed, Vet, Transport"),
      Notes(title: "Future Tasks", content: "Add charts & analytics"),
    ];
  }
}
