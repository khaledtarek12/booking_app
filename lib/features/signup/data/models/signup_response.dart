import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';
@JsonSerializable()
class SignupResponse {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  SignupResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({
    this.token,
    this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
