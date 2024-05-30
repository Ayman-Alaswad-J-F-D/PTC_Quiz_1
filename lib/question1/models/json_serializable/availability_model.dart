import 'package:json_annotation/json_annotation.dart';
import 'package:template_app/question1/helper/helper.dart';

part 'availability_model.g.dart';

@JsonSerializable()
class Availability with BaseToJson {
  final bool? online;
  final bool? inStore;

  const Availability({required this.online, required this.inStore});

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}
