import '../get_items.dart';

class Categories {
  const Categories._internal();
  static const Categories _instance = Categories._internal();
  factory Categories() => _instance;

  static List? _categories;

  static Future<List> get data async {
    _categories ??= await _loadCategories();
    return _categories!;
  }

  static Future<List> _loadCategories() => getCategories();
}
