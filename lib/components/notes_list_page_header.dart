import 'package:app_bloco_notas/components/clips/notes_list_header_clip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesListPageHeader extends StatelessWidget {
  const NotesListPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: NotesListHeaderClip(),
      child: Container(
        height: 150,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 45, 45, 45),
              Color.fromARGB(255, 50, 50, 50),
            ],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.circleUser,
                  color: Colors.white,
                ),
                Text(
                  'Profile',
                  style: _getTextStyle(),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.noteSticky,
                  color: Colors.white,
                ),
                Text(
                  'Notes',
                  style: _getTextStyle(),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.circleUser,
                  color: Colors.white,
                ),
                Text(
                  'Profile',
                  style: _getTextStyle(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _getTextStyle() {
    return TextStyle(
      color: Colors.white,
    );
  }
}
