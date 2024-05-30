import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:template_app/main.dart';
import 'package:template_app/question1/models/manual/company_model.dart';

// import 'package:template_app/question1/models/json_serializable/company_model.dart';
// import 'package:template_app/question1/models/freezed/company_model.dart';

import '../widget/item_builder.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  Company? dataModeling;

  @override
  Widget build(BuildContext context) {
    const _style = TextStyle(color: Colors.red, fontSize: 13);
    return ItemBuilder(
      onTap: _modeling,
      label:
          'Test For Modeling Ways Remove the comment from the "Import" you want to execute "FROM JSON" and Hot Restart Screen then Click on Screen.',
      widget: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Text(
                  'Company ${dataModeling?.name ?? "Name"}',
                  style: _style,
                ),
              ),
              Flexible(
                child: Text(
                  dataModeling?.established ?? 'Established',
                  style: _style,
                ),
              ),
              Flexible(
                child: Text(
                  dataModeling?.address?.city ?? 'City',
                  style: _style,
                ),
              ),
              Flexible(
                child: Text(
                  dataModeling?.address?.street ?? 'Street',
                  style: _style,
                ),
              ),
              Flexible(
                child: Text(
                  dataModeling?.departments[0].name ?? 'Departments name',
                  style: _style,
                ),
              ),
              Flexible(
                child: Text(
                  dataModeling?.departments[0].manager ?? 'Departments manager',
                  style: _style,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _modeling() {
    if (dataModeling != null) return;
    final json = jsonDecode(data);
    dataModeling = Company.fromJson(json);
    setState(() {});
  }
}
