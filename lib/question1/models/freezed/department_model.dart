// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'availability_model.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required String deptId,
    required String name,
    required String manager,
    @JsonKey(name: 'meeting_time') required String meetingTime,
    required double budget,
    required int? year,
    required Availability? availability,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
