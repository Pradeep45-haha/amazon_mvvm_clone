// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailInUse() = EmailInUse;
  const factory AuthFailure.noSuchEmail() = NoSuchEmail;
  const factory AuthFailure.incorrectPassword() = IncorrectPassword;
  const factory AuthFailure.unRegistredEmailId() = UnRegistredEmailId;
  const factory AuthFailure.authorisationFailed()= AuthorisationFailed;
  const factory AuthFailure.adminAuthorisationFailed() = adminAuthorisationFailed;
}
