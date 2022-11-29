import 'package:flutter/material.dart';
import 'package:task_app/features/task_2/domain/entities/location_pin.dart';
import 'package:task_app/features/task_2/presentation/location/location_card.dart';
import 'package:task_app/features/task_2/presentation/room/room_card.dart';

class Task3Screen extends StatelessWidget {
  //statefull

  const Task3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    4,
                    (index) => const LocationCard(
                      time: 'Полчаса до чистоты',
                      locationTitle: 'Ванна',
                      locationPins: [
                        LocationPin(
                          text: '1',
                          icon: Icons.replay_rounded,
                        ),
                        LocationPin(
                          text: '2',
                          icon: Icons.refresh_rounded,
                        ),
                        LocationPin(
                          text: '1',
                          icon: Icons.calendar_today_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                // FloatingActionButton(onPressed: () => {}),
                Expanded(
                  child: RoomCard(
                    actionTitle: 'Умная настройка',
                    photo: 'assets/images/Lighter.svg',
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 24,
                  height: 24,
                ),
                Expanded(
                  child: RoomCard(
                    actionTitle: 'Добавить комнату',
                    photo: 'assets/images/Room.svg',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
