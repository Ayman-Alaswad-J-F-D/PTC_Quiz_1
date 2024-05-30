import 'package:equatable/equatable.dart';

import '../../helper/helper.dart';

class Address extends Equatable with BaseToJson {
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

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      postalCode: json['postalCode'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
      'postalCode': postalCode,
    };
  }

  @override
  List<Object> get props => [street, city, state, postalCode];
}
