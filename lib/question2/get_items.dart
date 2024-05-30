import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:flutter/services.dart';

Future<List<String>> getCategories() async {
  List<String> items = [];
  await Future.delayed(const Duration(seconds: 3));
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(3).join(' '));
  }
  return items;
}

Future<List<String>> getVenues() async {
  List<String> items = [];
  await Future.delayed(const Duration(seconds: 3));
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(2).join(' '));
  }
  return items;
}

Future<List<dynamic>> getLanguages() async {
  List<dynamic> items;
  String filePath = "assets/lottie/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = await json.decode(jsonString);
  return items;
}
