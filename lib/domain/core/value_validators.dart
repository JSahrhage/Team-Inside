import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/core/failures.dart';

// AuthValidator
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const _emailRegex =
      r"""(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])""";
  if (input.isEmpty) {
    return left(ValueFailure.emptyValue(failedValue: input));
  } else if (!RegExp(_emailRegex).hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
  return right(input);
}

// AuthValidator
Either<ValueFailure<String>, String> validatePassword(String input) {
  const _passwordRegex = r"""^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$""";
  if (input.isEmpty) {
    return left(ValueFailure.emptyValue(failedValue: input));
  } else if (!RegExp(_passwordRegex).hasMatch(input)) {
    return left(ValueFailure.unsecurePassword(failedValue: input));
  }
  return right(input);
}

// AuthValidator
Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emptyValue(failedValue: input));
  }
  return right(input);
}

// TeamValidator
Either<ValueFailure<String>, String> validateTeamName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emptyValue(failedValue: input));
  }
  return right(input);
}

// TeamValidator
Either<ValueFailure<String>, String> validateWorkoutName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emptyValue(failedValue: input));
  }
  return right(input);
}
