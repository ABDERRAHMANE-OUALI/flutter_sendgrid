import 'package:flutter_sendgrid/src/models/content.dart';
import 'package:flutter_sendgrid/src/models/personalization.dart';
import 'package:flutter_sendgrid/src/models/sender.dart';
import 'package:json_annotation/json_annotation.dart';

part 'email.g.dart';

@JsonSerializable()
class Email {
  @JsonKey(name: "personalizations")
  final List<Personalization> personalization;
  final Sender from;
  final String subject;
  List<Content>? content;
  @JsonKey(name: "template_id")
  String? templateId;

  Email({
    required this.personalization,
    required this.from,
    required this.subject,
    required this.content,
    this.templateId,
  });

  /// Connect the generated [_$EmailFromJson] function to the `fromJson`
  /// factory.
  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);

  /// Connect the generated [_$EmailToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$EmailToJson(this);
}
