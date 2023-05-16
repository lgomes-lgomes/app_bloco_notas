import 'package:flutter/material.dart';

class CustomHeaderComponentText extends StatelessWidget {
  const CustomHeaderComponentText({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.white),
    );
  }
}
