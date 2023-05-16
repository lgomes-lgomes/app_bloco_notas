import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class HeaderComponentConfig {
  final double? height;
  final List<Color> colors;
  final List<HeaderComponentButtonsConfig> buttonsConfig;

  HeaderComponentConfig(this.height, this.colors, this.buttonsConfig);
}

class HeaderComponentButtonsConfig {
  final IconData icon;
  final Color iconColor;
  final String buttonText;

  HeaderComponentButtonsConfig({
    required this.icon,
    required this.iconColor,
    required this.buttonText,
  });
}
