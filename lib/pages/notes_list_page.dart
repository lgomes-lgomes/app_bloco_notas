import 'dart:math';

import 'package:app_bloco_notas/components/commom/enums/card_linear_gradient_color_enum.dart';
import 'package:app_bloco_notas/components/note_card_component.dart';
import 'package:app_bloco_notas/components/clips/header_component_clip.dart';
import 'package:app_bloco_notas/components/header_component.dart';
import 'package:app_bloco_notas/models/components_config/header_component_config.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        Positioned(
          child: HeaderComponent(
            constraints: constraints,
            config: HeaderComponentConfig(
              150,
              List.of(
                [
                  const Color.fromARGB(255, 45, 45, 45),
                  const Color.fromARGB(255, 50, 50, 50),
                ],
              ),
              List.of(
                [
                  HeaderComponentButtonsConfig(
                    icon: FontAwesomeIcons.cross,
                    iconColor: Colors.white,
                    buttonText: 'Close',
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );

    return widgetStack;
  }
}
