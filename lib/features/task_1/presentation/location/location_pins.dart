import 'package:flutter/material.dart';

class LocationPins extends StatelessWidget {
  final String numberPins;
  final IconData iconPin;

  const LocationPins(
      {super.key, required this.iconPin, required this.numberPins});

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
        children: [
          Icon(
            iconPin,
            size: 16,
            color: Colors.white,
          ),
          const SizedBox(
            width: 4,
            height: 4,
          ),
          Text(
            numberPins,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
