import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                '${note.createdAt.weekday.toString()} ${note.createdAt.day}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                note.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(),
            ]),
      ),
    );
  }
}
