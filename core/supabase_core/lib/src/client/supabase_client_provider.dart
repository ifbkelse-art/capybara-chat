import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseClientProvider {
  const SupabaseClientProvider(this._client);

  final SupabaseClient _client;

  SupabaseClient get client => _client;
}
