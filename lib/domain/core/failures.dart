import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // GeneralFailure
  const factory ValueFailure.emptyValue({
    required T failedValue,
  }) = EmptyValue<T>;
  // AuthFailure
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  // AuthFailure
  const factory ValueFailure.unsecurePassword({
    required T failedValue,
  }) = UnsecurePassword<T>;
  // AuthFailure
  const factory ValueFailure.notMatchingPasswords({
    required T firstFailedValue,
    required T secondFailedValue,
  }) = NotMatchingPasswords<T>;
  // AuthFailure
  const factory ValueFailure.invalidUsername({
    required T failedValue,
  }) = InvalidUsername<T>;
}
