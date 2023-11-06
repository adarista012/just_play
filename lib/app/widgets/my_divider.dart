import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        Text(
          "  or  ",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
