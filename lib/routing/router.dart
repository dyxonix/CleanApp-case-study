import 'package:go_router/go_router.dart';
import 'package:task_app/constants/router.dart';
import 'package:task_app/widgets/app_scaffold.dart';

class AppRouter {
  static GoRouter get router => GoRouter(
        routes: [
          ShellRoute(
              builder: (context, state, child) => AppScaffold(child: child),
              routes: AppRouterConstants.routes),
        ],
        initialLocation: AppRouterConstants.routes.isNotEmpty
            ? AppRouterConstants.routes.first.path
            : null,
      );
}
