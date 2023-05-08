import 'package:dartz/dartz.dart';

import '../core/failures/failures.dart';
import '../core/value_object.dart';
import '../core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String email) {
    return EmailAddress._(validateEmailAddress(email));
  }
}

class Password extends ValueObject<String> {
  const Password._(this.value);

  final Either<ValueFailure<String>, String> value;

  factory Password(String email) {
    return Password._(validatePassword(email));
  }
}
