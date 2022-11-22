import 'package:flutter/material.dart';
import 'location_header.dart';
import 'location_pins.dart';

class LocationCard extends StatelessWidget {
  final String locationTitle, time;
  final List<String> numbers;

  const LocationCard(
      {Key? key,
      required this.time,
      required this.locationTitle,
      required this.numbers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF3E3562),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          LocationHeader(headerTitle: locationTitle),
          Row(
            children: [
              LocationPins(iconPin: Icons.replay, numberPins: numbers[0]),
              LocationPins(
                  iconPin: Icons.refresh_rounded, numberPins: numbers[1]),
              LocationPins(
                  iconPin: Icons.calendar_today_sharp, numberPins: numbers[2]),
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
