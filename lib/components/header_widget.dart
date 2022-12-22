import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
