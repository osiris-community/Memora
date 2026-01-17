import 'package:flutter/material.dart';
import 'package:memora_app/components/mem_app_bar.dart';
import 'package:memora_app/components/notes_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MemAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: const NotesList(),
      ),
    );
  }
}
