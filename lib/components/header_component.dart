import 'package:app_bloco_notas/components/clips/header_component_clip.dart';
import 'package:app_bloco_notas/components/custom_header_component_text.dart';
import 'package:app_bloco_notas/models/components_config/header_component_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent(
      {super.key, required this.config, required this.constraints});

  final HeaderComponentConfig config;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    const double padding = 24;

    return ClipPath(
      clipper: HeaderComponentClip(),
      child: Container(
        padding: const EdgeInsets.only(right: padding),
        height: config.height ?? 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: config.colors,
          ),
        ),
        child: Center(
          child: ListView.builder(
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: config.buttonsConfig.length,
            itemBuilder: (context, index) {
              final buttonConfig = config.buttonsConfig[index];

              return Row(
                children: [
                  SizedBox(
                    width: (constraints.maxWidth - padding) /
                        config.buttonsConfig.length,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        buttonConfig.icon,
                        color: buttonConfig.iconColor,
                      ),
                      CustomHeaderComponentText(
                        data: buttonConfig.buttonText,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
