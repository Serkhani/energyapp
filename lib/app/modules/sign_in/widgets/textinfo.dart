import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const TextInfo({super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.indigo.withOpacity(0.4),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }
}
