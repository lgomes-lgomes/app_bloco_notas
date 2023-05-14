import 'package:app_bloco_notas/components/clips/curved_rectangle_clip.dart';
import 'package:app_bloco_notas/components/commom/card_linear_gradient.dart';
import 'package:app_bloco_notas/components/commom/enums/card_linear_gradient_color_enum.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/material.dart';

class NoteCardComponent extends StatelessWidget {
  NoteCardComponent({
    super.key,
    required this.colors,
    required this.note,
    required this.height,
  });

  final NoteModel note;
  List<Color> colors;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: Clip.hardEdge,
      clipper: CurvedRectangleClipper(),
      child: Container(
        height: height,
        padding: const EdgeInsets.only(
          left: 32,
          top: 100,
        ),
        decoration: BoxDecoration(
          gradient: CardLinearGradient(colors: colors),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'teste',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              note.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
