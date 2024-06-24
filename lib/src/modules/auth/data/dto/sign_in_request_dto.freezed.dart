// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInRequestDto _$SignInRequestDtoFromJson(Map<String, dynamic> json) {
  return _SignInRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SignInRequestDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInRequestDtoCopyWith<SignInRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestDtoCopyWith<$Res> {
  factory $SignInRequestDtoCopyWith(
          SignInRequestDto value, $Res Function(SignInRequestDto) then) =
      _$SignInRequestDtoCopyWithImpl<$Res, SignInRequestDto>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInRequestDtoCopyWithImpl<$Res, $Val extends SignInRequestDto>
    implements $SignInRequestDtoCopyWith<$Res> {
  _$SignInRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInRequestDtoImplCopyWith<$Res>
    implements $SignInRequestDtoCopyWith<$Res> {
  factory _$$SignInRequestDtoImplCopyWith(_$SignInRequestDtoImpl value,
          $Res Function(_$SignInRequestDtoImpl) then) =
      __$$SignInRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestDtoImplCopyWithImpl<$Res>
    extends _$SignInRequestDtoCopyWithImpl<$Res, _$SignInRequestDtoImpl>
    implements _$$SignInRequestDtoImplCopyWith<$Res> {
  __$$SignInRequestDtoImplCopyWithImpl(_$SignInRequestDtoImpl _value,
      $Res Function(_$SignInRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequestDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInRequestDtoImpl implements _SignInRequestDto {
  const _$SignInRequestDtoImpl({required this.email, required this.password});

  factory _$SignInRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInRequestDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInRequestDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestDtoImplCopyWith<_$SignInRequestDtoImpl> get copyWith =>
      __$$SignInRequestDtoImplCopyWithImpl<_$SignInRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SignInRequestDto implements SignInRequestDto {
  const factory _SignInRequestDto(
      {required final String email,
      required final String password}) = _$SignInRequestDtoImpl;

  factory _SignInRequestDto.fromJson(Map<String, dynamic> json) =
      _$SignInRequestDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInRequestDtoImplCopyWith<_$SignInRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
