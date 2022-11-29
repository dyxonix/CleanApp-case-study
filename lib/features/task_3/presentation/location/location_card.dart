import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_app/features/task_2/domain/entities/location_pin.dart';
import 'location_header.dart';
import 'location_view_pins.dart';

class LocationCard extends StatelessWidget {
  final String locationTitle, time;
  final List<LocationPin> locationPins;

  const LocationCard({
    super.key,
    required this.time,
    required this.locationTitle,
    required this.locationPins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF3E3562),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          LocationHeader(headerTitle: locationTitle),
          Row(
            children: [
              ...locationPins.map(
                  (e) => LocationViewPins(numberPin: e.text, iconPin: e.icon)),
              Expanded(
                child: Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
