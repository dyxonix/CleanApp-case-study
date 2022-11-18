import 'dart:js';

import 'package:flutter/material.dart';

import 'location_title.dart';
import 'settings_blocks.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF3E3562),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: const [
          LocationTitle(),
          SettingsBlock(),
        ],
      ),
    );
  }
}
