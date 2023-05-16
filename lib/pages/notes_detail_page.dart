import 'package:app_bloco_notas/components/custom_header_component_text.dart';
import 'package:app_bloco_notas/components/header_component.dart';
import 'package:app_bloco_notas/models/components_config/header_component_config.dart';
import 'package:app_bloco_notas/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesDetailPage extends StatelessWidget {
  NotesDetailPage({Key? key}) : super(key: key);

  NoteModel note =
      NoteModel(name: ' note1', createdAt: DateTime.now(), note: 'teste');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 15, 15, 15),
                Color.fromARGB(255, 20, 20, 20),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(250, 51, 0, 64),
                        Color.fromARGB(250, 92, 0, 118),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top: 90,
                    left: 24,
                    right: 24,
                    bottom: 24,
                  ),
                  padding: EdgeInsets.only(
                    top: 24,
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          note.name,
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          note.note,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: HeaderComponent(
                  constraints: constraints,
                  config: HeaderComponentConfig(
                    80,
                    List.of(
                      [
                        const Color.fromARGB(255, 45, 45, 45),
                        const Color.fromARGB(255, 50, 50, 50),
                      ],
                    ),
                    List.of(
                      [
                        HeaderComponentButtonsConfig(
                          icon: FontAwesomeIcons.close,
                          iconColor: Colors.white,
                          buttonText: 'Close',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
