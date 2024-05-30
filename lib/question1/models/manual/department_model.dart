import 'package:equatable/equatable.dart';

import '../../helper/helper.dart';
import 'availability_model.dart';

class Department extends Equatable with BaseToJson {
  final String deptId;
  final String name;
  final String manager;
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

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      deptId: json['deptId'],
      name: json['name'],
      manager: json['manager'],
      meetingTime: json['meeting_time'],
      budget: json['budget'],
      year: json['year'],
      availability: _fillAvailability(json),
    );
  }

  static Availability? _fillAvailability(Map<String, dynamic>? json) =>
      json != null ? Availability.fromJson(json['availability']) : null;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'deptId': deptId,
      'name': name,
      'manager': manager,
      'meeting_time': meetingTime,
      'budget': budget,
      'year': year,
      'availability': availability?.toJson(),
    };
  }

  @override
  List<Object> get props {
    return [
      deptId,
      name,
      manager,
      meetingTime,
      budget,
      year ?? "Not found year",
      availability ?? "Not found availability",
    ];
  }
}
