import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/constants/router.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.menu),
            splashRadius: 16,
            itemBuilder: (context) {
              return [
                for (final route in AppRouterConstants.routes)
                  PopupMenuItem(
                    value: route.path,
                    child: Text(route.path),
                  ),
              ];
            },
            onSelected: (value) => context.go(value),
          ),
        ],
      ),
      body: child,
    );
  }
}
