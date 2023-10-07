import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  final String type;
  final String value;

  Content({this.type = "text/plain", required this.value});

  /// Connect the generated [_$ContentFromJson] function to the `fromJson`
  /// factory.
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  /// Connect the generated [_$ContentToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
