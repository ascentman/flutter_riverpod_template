import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class RouterObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    if (kDebugMode) log('Pop route: ${route.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (kDebugMode) log('Remove route: ${route.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (kDebugMode) log('Replace route: ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    if (kDebugMode) log('Push route: ${route.settings.name}');
    super.didPush(route, previousRoute);
  }
}
