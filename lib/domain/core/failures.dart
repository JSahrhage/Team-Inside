import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // AuthFailure
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  // AuthFailure
  const factory ValueFailure.unsecurePassword({
    required T failedValue,
  }) = UnsecurePassword<T>;
}
