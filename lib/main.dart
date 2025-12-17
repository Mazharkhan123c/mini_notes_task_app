import 'package:flutter/material.dart';
import 'package:mini_notes_task_app/core/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'view_models/notes_view_model.dart';
import 'screens/notes_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NotesViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const NotesScreen(),
    );
  }
}
