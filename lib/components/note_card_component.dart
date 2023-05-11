import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteCardComponent extends StatelessWidget {
  NoteModel noteModel;

  NoteCardComponent({super.key, required this.noteModel});

  var dropDownItems = ['Deletar'];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        noteModel.name,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      leading: const Icon(FontAwesomeIcons.solidNoteSticky),
      trailing: DropdownButton(
        icon: const Icon(Icons.more_vert_rounded),
        onChanged: (value) {},
        items: dropDownItems.map<DropdownMenuItem<String>>(
          (value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
