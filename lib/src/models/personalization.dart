import 'package:flutter_sendgrid/src/models/recipient.dart';
import 'package:json_annotation/json_annotation.dart';

part 'personalization.g.dart';

@JsonSerializable()
class Personalization {
  final List<Recipient> to;
  final String subject;

  Personalization({required this.to, required this.subject});

  /// Connect the generated [_$PersonalizationFromJson] function to the `fromJson`
  /// factory.
  factory Personalization.fromJson(Map<String, dynamic> json) =>
      _$PersonalizationFromJson(json);

  /// Connect the generated [_$PersonalizationToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PersonalizationToJson(this);
}
