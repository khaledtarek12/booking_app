
import 'package:json_annotation/json_annotation.dart';

part 'signup_requset_body.g.dart';

@JsonSerializable()
class SignupRequsetBody {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignupRequsetBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$SignupRequsetBodyToJson(this);
}
