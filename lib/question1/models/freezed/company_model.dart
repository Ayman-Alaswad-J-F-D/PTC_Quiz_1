// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/json_key_helper.dart';
import 'address_model.dart';
import 'department_model.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'is_active') required int isActive,
    required String name,
    required String established,
    required Address? address,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) {
    json = JsonKeyHelper.handleJsonKey(json['company']);
    return _$CompanyFromJson(json);
  }
}
