import 'package:equatable/equatable.dart';
import 'package:template_app/question1/helper/helper.dart';

class Availability extends Equatable with BaseToJson {
  final bool? online;
  final bool? inStore;

  const Availability({required this.online, required this.inStore});

  factory Availability.fromJson(Map<String, dynamic>? json) {
    return Availability(
      online: json?['online'] as bool?,
      inStore: json?['inStore'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {'online': online, 'inStore': inStore};

  @override
  List<Object> get props => [
        online ?? "Not found online",
        inStore ?? "Not found inStore",
      ];
}
