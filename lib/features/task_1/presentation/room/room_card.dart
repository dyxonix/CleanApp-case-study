import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(27),
      decoration: const BoxDecoration(
        color: Color(0xFF5D539F),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/Room.svg',
          ),
          const Text(
            "Добавить комнату",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
