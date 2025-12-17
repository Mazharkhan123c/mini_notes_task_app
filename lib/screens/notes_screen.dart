import 'package:flutter/material.dart';

import '../view_models/notes_view_model.dart';
import '../widgets/note_tile.dart';

import 'package:provider/provider.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<NotesViewModel>().fetchNotes());
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<NotesViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Notes Viewer (MVVM)"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => vm.fetchNotes(),
          ),
        ],
      ),
      body: Center(
        child: Builder(
          builder: (_) {
            if (vm.isLoading) {
              return const CircularProgressIndicator();
            }

            if (vm.error != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(vm.error!, style: const TextStyle(color: Colors.red)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => vm.fetchNotes(),
                    child: const Text("Retry"),
                  ),
                ],
              );
            }

            return ListView.builder(
              itemCount: vm.notes.length,
              itemBuilder: (_, index) => NoteTile(note: vm.notes[index]),
            );
          },
        ),
      ),
    );
  }
}
