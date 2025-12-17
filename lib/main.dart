import 'package:flutter/material.dart';
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
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const NotesScreen(),
    );
  }
}
