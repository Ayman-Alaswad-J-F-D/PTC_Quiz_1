import 'package:json_annotation/json_annotation.dart';
import 'package:template_app/question1/helper/helper.dart';

import '../../helper/json_key_helper.dart';
import 'address_model.dart';
import 'department_model.dart';

part 'company_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Company with BaseToJson {
  @JsonKey(name: 'is_active')
  final int isActive;
  final String name;
  final String established;
  final Address? address;
  final List<Department> departments;

  const Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    final company = JsonKeyHelper.handleJsonKey(json['company']);
    return _$CompanyFromJson(company);
  }

  @override
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
