import 'dart:math';

import 'package:app_bloco_notas/components/clips/curved_rectangle_clip.dart';
import 'package:app_bloco_notas/components/commom/enums/card_linear_gradient_color_enum.dart';
import 'package:app_bloco_notas/components/note_card_component.dart';
import 'package:app_bloco_notas/components/clips/notes_list_header_clip.dart';
import 'package:app_bloco_notas/components/notes_list_page_header.dart';
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

  Color? lastColor;

  var colors = List.of([
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
  ]);

  var colors2 = List.of([
    Colors.black,
    Colors.grey,
    Colors.purple,
  ]);

  List<Color> color = CardLinearGradientColorEnum.DARK_BLUE;
  List<Color> nextColor = CardLinearGradientColorEnum.DARK_PURPLE;
  List<Color> aux = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 15, 15, 15),
            Color.fromARGB(255, 20, 20, 20),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return buildList(constraints);
          },
        ),
      ),
    );
  }

  Widget buildList(BoxConstraints constraints) {
    List<Widget> widgets = [];

    for (NoteModel note in notes) {
      Widget widget = NoteCardComponent(
        note: note,
        colors: color,
        height: 200,
      );

      aux = color;
      color = nextColor;
      nextColor = aux;

      widgets.add(widget);
    }

    Widget widgetStack = Stack(
      children: [
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(top: 75),
            child: ListView(children: widgets),
          ),
        ),
        const Positioned(
          child: NotesListPageHeader(),
        ),
      ],
    );

    return widgetStack;
  }
}
