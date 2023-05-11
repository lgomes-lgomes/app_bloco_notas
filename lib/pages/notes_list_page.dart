import 'package:app_bloco_notas/components/note_card_component.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/material.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({Key? key}) : super(key: key);

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  var notes = List.of([
    NoteModel(name: 'name1', createdAt: DateTime.now(), note: 'note1'),
    NoteModel(name: 'name2', createdAt: DateTime.now(), note: 'note2'),
    NoteModel(name: 'name3', createdAt: DateTime.now(), note: 'note3'),
    NoteModel(name: 'name4', createdAt: DateTime.now(), note: 'note4'),
    NoteModel(name: 'name5', createdAt: DateTime.now(), note: 'note5'),
    NoteModel(name: 'name6', createdAt: DateTime.now(), note: 'note6'),
    NoteModel(name: 'name7', createdAt: DateTime.now(), note: 'note7'),
    NoteModel(name: 'name8', createdAt: DateTime.now(), note: 'note8'),
    NoteModel(name: 'name9', createdAt: DateTime.now(), note: 'note9'),
    NoteModel(name: 'name10', createdAt: DateTime.now(), note: 'note10'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Notas'),
      ),
      body: Container(
        color: const Color(0xff1d1d1f),
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            return NoteCardComponent(noteModel: notes[index]);
          }),
          separatorBuilder: ((context, index) {
            return const Divider(
              color: Color(0xfff5f5f7),
              thickness: 1,
            );
          }),
          itemCount: notes.length,
        ),
      ),
    );
  }
}
