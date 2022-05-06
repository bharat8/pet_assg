import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status.initial() = _Initial;
  const factory Status.loading() = _Loading;
  const factory Status.success() = _Success;
  const factory Status.failure([Failure? failure]) = _Failure;
}
