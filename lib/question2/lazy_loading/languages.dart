import '../get_items.dart';

class Languages {
  const Languages._internal();
  static const Languages _instance = Languages._internal();
  factory Languages() => _instance;

  static List? _languages;

  static Future<List> get data async {
    _languages ??= await _loadLanguages();
    return _languages!;
  }

  static Future<List> _loadLanguages() => getLanguages();
}
