import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/features/root/presentation/root_screen.dart';
import 'package:template/router/router.dart';

part 'routes.g.dart';

@TypedShellRoute<MainShellRouteData>(
  routes: [
    TypedGoRoute<MainRoute>(path: MainRoute.path),
  ],
)
class MainShellRouteData extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = shellRouterKey;
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RootScreen(child: navigator);
  }
}

class MainRoute extends GoRouteData {
  static const path = '/main';
  static const name = 'main';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: Placeholder(),
      name: name,
    );
  }
}
