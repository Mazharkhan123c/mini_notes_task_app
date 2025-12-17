import 'package:flutter/material.dart';
import 'package:mini_notes_task_app/models/notes.dart';

class NoteTile extends StatelessWidget {
  final Notes note;

  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      elevation: 3,
      child: ListTile(
        title: Text(
          note.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          note.content.split('\n').first,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
