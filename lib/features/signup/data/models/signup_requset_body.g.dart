// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'signup_requset_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequsetBody _$SignupRequsetBodyFromJson(Map<String, dynamic> json) =>
    SignupRequsetBody(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gender: (json['gender'] as num).toInt(),
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$SignupRequsetBodyToJson(SignupRequsetBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
