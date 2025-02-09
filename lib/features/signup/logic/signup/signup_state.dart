import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';

@freezed
abstract class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.signUpLoading() = SignUpLoading;
  const factory SignupState.signUpSuccess(T data) = SignUpSuccess;
  const factory SignupState.signUpError({required String error}) = SignUpError;
}
