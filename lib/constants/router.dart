import 'package:go_router/go_router.dart';
import 'package:task_app/features/task_1/presentation/task_1_screen.dart';
import 'package:task_app/features/task_2/presentation/task_2_screen.dart';

abstract class AppRouterConstants {
  static List<GoRoute> get routes => [
        GoRoute(path: _AppRouterPaths.task1, builder: (_, __) => const Task1Screen()),
        GoRoute(path: _AppRouterPaths.task2, builder: (_, __) => const Task2Screen()),
      ];
}

abstract class _AppRouterPaths {
  static const String task1 = '/task1';
  static const String task2 = '/task2';
}
