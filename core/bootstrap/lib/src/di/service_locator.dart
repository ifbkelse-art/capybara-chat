import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  _registerCore();
  _registerFeatures();
}

void _registerCore() {}

void _registerFeatures() {}
