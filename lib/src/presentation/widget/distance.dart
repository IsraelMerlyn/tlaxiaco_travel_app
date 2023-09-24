import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DistanceWidget extends StatelessWidget {
  final String location;
  const DistanceWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Ionicons.locate_outline,
          color: Colors.black,
          size: 14,
        ),
        Text(
          'Tlaxiaco',
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(
          width: 3,
        ),
        ...List.generate(
          18,
          (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Ionicons.locate_outline,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          location,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
