import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          width: 6,
        ),
        const Icon(
          Icons.expand_more,
          color: Color(0xFF42C999),
        )
      ],
    );
  }
}
