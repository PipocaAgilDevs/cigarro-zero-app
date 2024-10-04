import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  Future<String?> read(String key);
  Future<void> write(String key, String value);
  Future<void> delete(String key);
}

class LocalStorageImplementation implements LocalStorage {
  final SharedPreferences _sharedPreferences;

  LocalStorageImplementation._(this._sharedPreferences);

  static Future<LocalStorageImplementation> create() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return LocalStorageImplementation._(sharedPreferences);
  }

  @override
  Future<void> delete(String key) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<String?> read(String key) async {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> write(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }
}
