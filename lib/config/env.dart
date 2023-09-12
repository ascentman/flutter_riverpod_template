import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:template/config/build_config.dart';
import 'package:template/style/style.dart';

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    if (kReleaseMode) {
      // Used to prevent printing in release mode
      debugPrint = (message, {wrapWidth}) {};
    }

    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      BuildConfig.init(flavor: const String.fromEnvironment('flavor'));

      Themes.initUiOverlayStyle();

      usePathUrlStrategy();

      final app = await onCreate();

      runApp(
        ProviderScope(
          child: app,
        ),
      );
    }, (obj, stack) {
      debugPrint(obj.toString());
      debugPrint(stack.toString());
    });
  }

  FutureOr<HookConsumerWidget> onCreate();
}
