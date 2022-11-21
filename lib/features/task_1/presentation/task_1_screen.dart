import 'package:flutter/material.dart';
import 'package:task_app/features/task_1/presentation/location/location_card.dart';
import 'package:task_app/features/task_1/presentation/room/room_card.dart';

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const LocationCard(),
            const SizedBox(height: 24),
            const LocationCard(),
            const SizedBox(height: 24),
            Row(
              children: const [
                Expanded(child: RoomCard()),
                SizedBox(
                  width: 24,
                  height: 24,
                ),
                Expanded(child: RoomCard()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
