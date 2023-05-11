import 'package:app_bloco_notas/components/note_card_component.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:app_bloco_notas/pages/notes_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff1d1d1f),
      ),
      home: const NotesListPage(),
    );
  }
}
