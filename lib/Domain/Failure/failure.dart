import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.general(String errorMessage) = _General;
  const factory Failure.network(String errorMessage) = _Network;
}
