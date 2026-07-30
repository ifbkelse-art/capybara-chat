import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bootstrap/src/di/service_locator.dart';
import 'package:bootstrap/src/observers/app_bloc_observer.dart';
import 'package:flutter/widgets.dart';

import '../app/app.dart';

Future<void> bootstrap() async {
  await _ensureFlutterInitialized();
  _configureBlocObserver();
  await _initializeDependencies();
  _runApplication();
}

Future<void> _ensureFlutterInitialized() async {
  WidgetsFlutterBinding.ensureInitialized();
}

void _configureBlocObserver() {
  Bloc.observer = AppBlocObserver();
}

Future<void> _initializeDependencies() async {
  await initializeDependencies();
}

void _runApplication() {
  runApp(const App());
}
