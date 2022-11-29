import 'dart:ui';

import 'package:flutter/material.dart';
import 'location_header.dart';
import 'location_view_pins.dart';

class AddLocationCard extends StatefulWidget {
  AddLocationCard({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AddLocationCardState();
  }
}

class _AddLocationCardState extends State<AddLocationCard> {
  String _time = "1";
  late String _locationTitle;

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
          LocationHeader(headerTitle: _locationTitle),
          Row(
            children: [
              LocationViewPins(
                iconPin: Icons.calendar_today_outlined,
                numberPin: 'd',
              ),
              Expanded(
                child: Text(
                  _time,
                  style: TextStyle(
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
