// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestDtoImpl _$$SignInRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInRequestDtoImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInRequestDtoImplToJson(
        _$SignInRequestDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
