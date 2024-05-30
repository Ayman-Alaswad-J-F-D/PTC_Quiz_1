// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      isActive: (json['is_active'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      established: json['established'] as String,
      departments: (json['departments'] as List<dynamic>)
          .map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'is_active': instance.isActive,
      'name': instance.name,
      'established': instance.established,
      'address': instance.address?.toJson(),
      'departments': instance.departments.map((e) => e.toJson()).toList(),
    };
