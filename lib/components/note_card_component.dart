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
          color: Color(0xfff5f5f7),
        ),
      ),
      leading: const Icon(
        FontAwesomeIcons.paperclip,
        color: Color(0xfff5f5f7),
      ),
      trailing: DropdownButton(
        icon: const Icon(
          Icons.more_vert_rounded,
          color: Color(0xfff5f5f7),
        ),
        onChanged: (value) {},
        items: dropDownItems.map<DropdownMenuItem<String>>(
          (value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.black),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
