import 'package:flutter/material.dart';

class TransportCard extends StatelessWidget {
  const TransportCard({
    super.key,
    required this.summ,
    required this.title,
    required this.period,
  });
  final String summ;
  final String title;
  final String period;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(
          color: const Color(
            0xFFEAF9F4,
          ),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFEAF9F4),
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              summ,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              period,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA2A0A8)),
            ),
          ],
        ),
      ),
    );
  }
}
