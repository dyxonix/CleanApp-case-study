import 'package:flutter/material.dart';
import 'package:task_app/routing/router.dart';

Future<void> main() async {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ng Tasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerConfig: AppRouter.router,
    );
  }
}
