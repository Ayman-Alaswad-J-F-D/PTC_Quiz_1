import 'package:flutter/material.dart';
import 'package:template_app/screens/lazy_loading_screen.dart';
import 'package:template_app/screens/modeling_screen.dart';
import 'package:template_app/screens/users_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const HomeScreen(),
    );
  }
}

List<Widget> screens = const [
  CompanyScreen(),
  LazyLoadingScreen(),
  UserScreen(),
];

const data = '''
{
  "company": {
    "is_active": 0,
    "name": "Tech Innovators Inc.",
    "address": {
      "street": "123 Innovation Drive",
      "city": "Techville",
      "state": "CA",
      "postalCode": "94043"
    },
    "established": "2023-05-24T00:00:00Z",
    "departments": [
      {
        "deptId": "D001",
        "name": "Engineering",
        "manager": "Carol Davis",
        "budget": 500000.00,
        "year": 2023,
        "availability": {
          "online": true,
          "inStore": false
        },
        "meeting_time": "14:30"
      },
      {
        "deptId": "D002",
        "name": "Marketing",
        "manager": "David Wilson",
        "budget": 300000.00,
        "meeting_time": "10:00 AM"
      }
    ]
  }
}''';

const data2 = '''
{
  "company": {
    "isActive": 1,
    "name": "Tech Innovators Inc.",
    "address": null,
    "established": "2023-05-24T00:00:00Z",
    "departments": []
  }
}''';
