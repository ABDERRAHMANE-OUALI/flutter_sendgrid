import 'package:json_annotation/json_annotation.dart';

part 'recipient.g.dart';

@JsonSerializable()
class Recipient {
  final String email;
  final String name;

  Recipient({required this.email, required this.name});

  /// Connect the generated [_$RecipientFromJson] function to the `fromJson`
  /// factory.
  factory Recipient.fromJson(Map<String, dynamic> json) =>
      _$RecipientFromJson(json);

  /// Connect the generated [_$RecipientToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RecipientToJson(this);
}
