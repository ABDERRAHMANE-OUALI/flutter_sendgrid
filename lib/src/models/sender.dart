import 'package:flutter_sendgrid/src/models/email.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sender.g.dart';

@JsonSerializable()
class Sender {
  final String email;
  String name;

  Sender({required this.email, this.name = ""});

  /// Connect the generated [_$SenderFromJson] function to the `fromJson`
  /// factory.
  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);

  /// Connect the generated [_$SenderToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SenderToJson(this);
}
