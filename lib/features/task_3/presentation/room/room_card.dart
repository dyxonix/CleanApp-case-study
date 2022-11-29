import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoomCard extends StatelessWidget {
  final String actionTitle, photo;

  final void Function()? onPressed;

  const RoomCard({
    super.key,
    required this.actionTitle,
    required this.photo,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
        // onPressed?.call();
      },
      child: Container(
        padding: const EdgeInsets.all(27),
        margin: const EdgeInsets.symmetric(vertical: 24),
        decoration: const BoxDecoration(
          color: Color(0xFF5D539F),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              photo,
              height: 120,
            ),
            Text(
              actionTitle,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
