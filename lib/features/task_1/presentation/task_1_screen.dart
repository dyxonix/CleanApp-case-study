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
            const LocationCard(
                locationTitle: 'Ванная',
                time: 'Полчаса до чистоты',
                numbers: ['1', '2', '3']),
            const SizedBox(height: 24),
            const LocationCard(
                locationTitle: 'Спальня',
                time: 'Нужна легкая уборка',
                numbers: ['6', '6', '3']),
            const SizedBox(height: 24),
            Row(
              children: const [
                Expanded(
                  child: RoomCard(
                      actionTitle: 'Умная настройка',
                      photo: 'assets/images/Lighter.svg'),
                ),
                SizedBox(
                  width: 24,
                  height: 24,
                ),
                Expanded(
                  child: RoomCard(
                      actionTitle: 'Добавить комнату',
                      photo: 'assets/images/Room.svg'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
