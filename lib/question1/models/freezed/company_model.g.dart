// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      isActive: (json['is_active'] as num).toInt(),
      name: json['name'] as String,
      established: json['established'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      departments: (json['departments'] as List<dynamic>)
          .map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'name': instance.name,
      'established': instance.established,
      'address': instance.address,
      'departments': instance.departments,
    };
