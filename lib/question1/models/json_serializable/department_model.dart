import 'package:json_annotation/json_annotation.dart';

import '../../helper/helper.dart';
import 'availability_model.dart';

part 'department_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Department with BaseToJson {
  final String deptId;
  final String name;
  final String manager;
  @JsonKey(name: 'meeting_time')
  final String meetingTime;
  final double budget;
  final int? year;
  final Availability? availability;

  const Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.meetingTime,
    required this.budget,
    required this.year,
    required this.availability,
  });

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DepartmentToJson(this);
}
