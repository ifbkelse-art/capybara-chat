import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/src/router/app_redirect.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  redirect: appRedirect,
  routes: const [],
);
