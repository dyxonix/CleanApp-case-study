import 'package:flutter/material.dart';
import 'package:task_app/features/task_2/domain/entities/location_pin.dart';
import 'package:task_app/features/task_2/domain/enums/task_2_sreen_enums.dart';
import 'package:task_app/features/task_2/presentation/location/location_card.dart';
import 'package:task_app/features/task_2/presentation/room/room_card.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key, required this.type});
  final Task2ScreenType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: type == Task2ScreenType.static
          ? Column(
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        3,
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
                  children: const [
                    // Expanded(
                    //   child: RoomCard(
                    //     actionTitle: 'Умная настройка',
                    //     photo: 'assets/images/Lighter.svg',
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 24,
                    //   height: 24,
                    // ),
                    // Expanded(
                    //   child: RoomCard(
                    //     actionTitle: 'Добавить комнату',
                    //     photo: 'assets/images/Room.svg',
                    //   ),
                    // ),
                  ],
                ),
              ],
            )
          : Column(
              children: [
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: List.generate(
                          20,
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
                    ],
                  ),
                ),
                Row(
                  children: const [
                    // Expanded(
                    //   child: RoomCard(
                    //     actionTitle: 'Умная настройка',
                    //     photo: 'assets/images/Lighter.svg',
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 24,
                    //   height: 24,
                    // ),
                    // Expanded(
                    //   child: RoomCard(
                    //     actionTitle: 'Добавить комнату',
                    //     photo: 'assets/images/Room.svg',
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
    );
  }
}
