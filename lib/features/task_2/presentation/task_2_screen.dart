import 'package:flutter/material.dart';
import 'package:task_app/features/task_2/presentation/location/location_card.dart';
import 'package:task_app/features/task_2/presentation/room/room_card.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 280,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  3,
                  (index) => Column(
                    children: const [
                      LocationCard(
                        locationTitle: 'Ванна',
                        time: 'Полчаса до чистоты',
                        numbers: ['1', '2', '3'],
                      ),
                      LocationCard(
                        locationTitle: 'Спальня',
                        time: 'Нужна легкая уборка',
                        numbers: ['6', '6', '3'],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
    );
  }
}
