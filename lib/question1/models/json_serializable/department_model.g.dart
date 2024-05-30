// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      deptId: json['deptId'] as String,
      name: json['name'] as String,
      manager: json['manager'] as String,
      meetingTime: json['meeting_time'] as String,
      budget: (json['budget'] as num).toDouble(),
      year: (json['year'] as num?)?.toInt(),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'meeting_time': instance.meetingTime,
      'budget': instance.budget,
      'year': instance.year,
      'availability': instance.availability?.toJson(),
    };
