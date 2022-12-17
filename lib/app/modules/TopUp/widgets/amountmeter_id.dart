import 'package:flutter/material.dart';

class AmountMeterId extends StatelessWidget {
  final String text;
  final String info;
  const AmountMeterId({super.key, required this.text, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54)
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          decoration: BoxDecoration(
          color: Colors.indigo.withOpacity(0.4),

            borderRadius: BorderRadius.circular(4.0)),
          child: Text(info,
                style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ],
    );
  }
}
