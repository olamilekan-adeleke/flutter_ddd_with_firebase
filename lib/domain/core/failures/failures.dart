import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String message,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String message,
  }) = ShortPassword<T>;
}
