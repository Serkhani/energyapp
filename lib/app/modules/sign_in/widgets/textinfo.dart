import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const TextInfo({super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
          style: Theme.of(context).textTheme.titleSmall,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              constraints: const BoxConstraints(maxHeight: 50.0),
              fillColor: Colors.indigo.withOpacity(0.4),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}
