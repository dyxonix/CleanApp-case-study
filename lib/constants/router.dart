import 'package:go_router/go_router.dart';
import 'package:task_app/features/task_1/presentation/task_1_screen.dart';
import 'package:task_app/features/task_2/presentation/task_2_screen.dart';
import 'package:task_app/features/task_3/presentation/task_3_screen.dart';
// import 'package:task_app/features/task_2/presentation/task_2_screen_dynamic.dart';

import '../features/task_2/domain/enums/task_2_sreen_enums.dart';

abstract class AppRouterConstants {
  static List<GoRoute> get routes => [
        GoRoute(
          path: AppRouterPaths.task1,
          builder: (_, __) => const Task1Screen(),
        ),
        GoRoute(
          path: AppRouterPaths.task2Static,
          builder: (_, __) => const Task2Screen(
            type: Task2ScreenType.static,
          ),
        ),
        GoRoute(
          path: AppRouterPaths.task2Dynamic,
          builder: (_, __) => const Task2Screen(
            type: Task2ScreenType.dynamic,
          ),
        ),
        GoRoute(
          path: AppRouterPaths.task3,
          builder: (_, __) => const Task3Screen(),
        ),
      ];
}

abstract class AppRouterPaths {
  static const String task1 = '/task1';
  static const String task2Static = '/task2/static';
  static const String task2Dynamic = '/task2/dynamic';
  static const String task3 = '/task3';
}
