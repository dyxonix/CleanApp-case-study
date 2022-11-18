import 'package:flutter/material.dart';
import 'location/location_card.dart';
import 'room/room_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanApp',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF332F55),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              LocationCard(),
              SizedBox(
                height: 24,
              ),
              LocationCard(),
              AddRoomBox(),
            ],
          ),
        ),
      ),
    );
  }
}
