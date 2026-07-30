import 'package:bootstrap/src/configuration/flavor.dart';

final class AppConfiguration {
  final Flavor flavor;

  const AppConfiguration({required this.flavor});

  bool get isDevelopment => flavor == Flavor.development;
  bool get isStaging => flavor == Flavor.staging;
  bool get isProduction => flavor == Flavor.production;
}
