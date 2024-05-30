import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_model.freezed.dart';
part 'availability_model.g.dart';

@freezed
class Availability with _$Availability {
  const factory Availability({
    required bool? online,
    required bool? inStore,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
