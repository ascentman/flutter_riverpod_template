import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:template/router/router_observer.dart';
import 'package:template/router/routes.dart';

part 'router.g.dart';

final rootRouterKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

final shellRouterKey = GlobalKey<NavigatorState>(debugLabel: 'shellRouterKey');

@Riverpod(keepAlive: true)
// ignore: unsupported_provider_value
GoRouter router(RouterRef ref) {
  return GoRouter(
    observers: [RouterObserver()],
    routes: $appRoutes,
    initialLocation: MainRoute.path,
    navigatorKey: rootRouterKey,
  );
}
