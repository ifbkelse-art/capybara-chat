import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:storage/storage.dart';

class SecureStorageService implements StorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService(this._storage);

  @override
  Future<void> clear() {
    return _storage.deleteAll();
  }

  @override
  Future<void> delete(String key) {
    return _storage.delete(key: key);
  }

  @override
  Future<String?> read(String key) {
    return _storage.read(key: key);
  }

  @override
  Future<void> write({required String key, required String value}) {
    return _storage.write(key: key, value: value);
  }
}
