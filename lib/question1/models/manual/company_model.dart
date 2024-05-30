import 'package:equatable/equatable.dart';
import 'package:template_app/question1/helper/helper.dart';

import '../../helper/date_helper.dart';
import '../../helper/json_key_helper.dart';
import 'address_model.dart';
import 'department_model.dart';

class Company extends Equatable with BaseToJson {
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
    return Company(
      isActive: company['is_active'],
      name: company['name'],
      address: _fillAddress(company['address']),
      established: _convertToDateTime(company['established']),
      departments: _extractDepartments(company['departments']),
    );
  }

  static Address? _fillAddress(Map<String, dynamic>? data) =>
      data != null ? Address.fromJson(data) : null;

  static String _convertToDateTime(String? established) {
    if (established == null) return 'established is null';
    return DateHelper.formatDateTime(established);
  }

  static List<Department> _extractDepartments(List? departments) {
    if (departments == null) return [];
    return List<Department>.from(
      (departments).map((dapt) => Department.fromJson(dapt)),
    ).toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'is_active': isActive,
      'name': name,
      'address': address?.toJson(),
      'established': _convertToUTC(established),
      'departments': departments.map((x) => x.toJson()).toList(),
    };
  }

  static String _convertToUTC(String established) =>
      DateHelper.formatUTC(established);

  @override
  List<Object> get props => [
        isActive,
        name,
        address ?? "Not found Address",
        established,
        departments,
      ];
}
