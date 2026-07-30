import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

extension GoRouterExtensions on BuildContext {
  GoRouter get router => GoRouter.of(this);
}
