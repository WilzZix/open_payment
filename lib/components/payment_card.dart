import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    required this.svgPath,
    required this.title,
  });
  final String svgPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 132,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            SvgPicture.asset(svgPath),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
