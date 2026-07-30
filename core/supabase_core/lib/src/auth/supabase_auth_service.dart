import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class SupabaseAuthService {
  Future<void> signInWithOtp();

  Future<void> signOut();

  Stream<AuthState> get authStateChanges; 
}
