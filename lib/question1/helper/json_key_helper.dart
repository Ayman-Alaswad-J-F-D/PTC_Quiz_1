class JsonKeyHelper {
  static Map<String, dynamic> handleJsonKey(Map<String, dynamic>? json) {
    if (json == null) throw 'Company json is null';
    if (json.containsKey('isActive')) {
      json = json.map((key, value) {
        if (key.contains("isActive")) key = 'is_active';
        return MapEntry(key, value);
      });
    }
    return json;
  }
}
