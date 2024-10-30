import 'package:freezed_annotation/freezed_annotation.dart';

class MillisDatetimeJsonConverter implements JsonConverter<DateTime, int> {
  const MillisDatetimeJsonConverter();

  @override
  DateTime fromJson(int millis) => DateTime.fromMillisecondsSinceEpoch(millis);

  @override
  int toJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch;
}
