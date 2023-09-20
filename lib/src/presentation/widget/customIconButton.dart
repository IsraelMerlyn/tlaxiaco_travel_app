// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!), shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        constraints: const BoxConstraints.tightFor(width: 40),
        color: Colors.black54,
        icon: icon,
        splashRadius: 22,
      ),
    );
  }
}
