import 'package:template_app/question3/get_user.dart';

class CacheHelper {
  const CacheHelper._internal();
  static const CacheHelper _instance = CacheHelper._internal();
  factory CacheHelper() => _instance;

  static final _cache = <String, dynamic>{};

  static Map getUserCached(String key) {
    if (_isCached(key)) return _cache[key];
    saveData(key, getUserById(int.parse(key)));
    return _cache[key];
  }

  static bool _isCached(String key) => _cache.containsKey(key);

  static void saveData(String key, dynamic value) => _cache[key] = value;

  static void clearCache() => _cache.clear();
}
