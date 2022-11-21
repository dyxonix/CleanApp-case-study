import 'package:flutter/material.dart';
import 'location_header.dart';
import 'location_pins.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF3E3562),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          const LocationHeader(),
          Row(
            children: const [
              LocationPins(),
              LocationPins(),
              LocationPins(),
              Expanded(
                child: Text(
                  'Полчаса до чистоты',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
