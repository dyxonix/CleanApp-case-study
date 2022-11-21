import 'package:flutter/material.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        color: Color(0xFF3E3562),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Кухня',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.arrow_circle_right_outlined),
          ),
        ],
      ),
    );
  }
}
