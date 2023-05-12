import 'package:app_bloco_notas/models/enums/weekday_enum.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteCardComponent extends StatelessWidget {
  const NoteCardComponent({
    required this.color,
    required this.nextColor,
    required this.note,
  });

  final NoteModel note;
  final Color color;
  final Color nextColor;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          ),
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 80.0,
          bottom: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Created at: ${DateFormat.yMMMEd().format(note.createdAt)}',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                note.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(),
            ]),
      ),
    );
  }
}
