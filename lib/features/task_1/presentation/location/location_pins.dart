import 'package:flutter/material.dart';

class LocationPins extends StatelessWidget {
  const LocationPins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF8676E9), width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.rectangle),
      child: Row(
        children: const [
          Text(
            '1',
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Icon(
            Icons.replay,
            size: 16,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
