import 'package:flutter/material.dart';
import 'package:task_app/features/task_2/domain/entities/location_pin.dart';

class LocationViewPins extends StatelessWidget {
  final String numberPin;
  final IconData iconPin;

  const LocationViewPins({
    super.key,
    required this.iconPin,
    required this.numberPin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF8676E9),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
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
            numberPin,
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
