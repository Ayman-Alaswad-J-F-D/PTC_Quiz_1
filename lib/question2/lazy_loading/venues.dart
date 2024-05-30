import '../get_items.dart';

class Venues {
  const Venues._internal();
  static const Venues _instance = Venues._internal();
  factory Venues() => _instance;

  static List? _venues;

  static Future<List> get data async {
    _venues ??= await _loadVenues();
    return _venues!;
  }

  static Future<List> _loadVenues() => getVenues();
}
