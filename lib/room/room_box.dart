import 'package:flutter/material.dart';
import 'room_content.dart';

class AddRoomBox extends StatelessWidget {
  const AddRoomBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: const [
          Expanded(child: TitleOptionals()),
          SizedBox(
            width: 24,
          ),
          Expanded(child: TitleOptionals()),
        ],
      ),
    );
  }
}
