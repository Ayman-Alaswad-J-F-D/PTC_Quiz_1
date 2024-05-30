import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template_app/screens/user_details_screen.dart';
import 'package:template_app/widget/item_builder.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List jsonFile = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => loadJsonAsset());
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jsonFile.length,
      itemBuilder: (context, index) {
        final id = jsonFile[index]['id'];
        return SizedBox(
          height: 70,
          child: ItemBuilder(
            label: 'Users $id',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserDetails(id: id)),
            ),
          ),
        );
      },
    );
  }

  Future<void> loadJsonAsset() async {
    final jsonString = await rootBundle.loadString('assets/json/usrs.json');
    jsonFile = jsonDecode(jsonString);
    debugPrint(jsonFile.toString());
    setState(() {});
  }
}
