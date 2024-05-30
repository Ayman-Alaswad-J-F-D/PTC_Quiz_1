import 'package:json_annotation/json_annotation.dart';

import '../../helper/helper.dart';

part 'address_model.g.dart';

@JsonSerializable()
class Address with BaseToJson {
  final String street;
  final String city;
  final String state;
  final String postalCode;

  const Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
