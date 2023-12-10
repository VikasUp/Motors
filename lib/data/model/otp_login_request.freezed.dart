// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpLoginRequest _$OtpLoginRequestFromJson(Map<String, dynamic> json) {
  return _OtpLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$OtpLoginRequest {
  String? get phone_id => throw _privateConstructorUsedError;
  String? get api_key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpLoginRequestCopyWith<OtpLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpLoginRequestCopyWith<$Res> {
  factory $OtpLoginRequestCopyWith(
          OtpLoginRequest value, $Res Function(OtpLoginRequest) then) =
      _$OtpLoginRequestCopyWithImpl<$Res, OtpLoginRequest>;
  @useResult
  $Res call({String? phone_id, String? api_key});
}

/// @nodoc
class _$OtpLoginRequestCopyWithImpl<$Res, $Val extends OtpLoginRequest>
    implements $OtpLoginRequestCopyWith<$Res> {
  _$OtpLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_id = freezed,
    Object? api_key = freezed,
  }) {
    return _then(_value.copyWith(
      phone_id: freezed == phone_id
          ? _value.phone_id
          : phone_id // ignore: cast_nullable_to_non_nullable
              as String?,
      api_key: freezed == api_key
          ? _value.api_key
          : api_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpLoginRequestImplCopyWith<$Res>
    implements $OtpLoginRequestCopyWith<$Res> {
  factory _$$OtpLoginRequestImplCopyWith(_$OtpLoginRequestImpl value,
          $Res Function(_$OtpLoginRequestImpl) then) =
      __$$OtpLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone_id, String? api_key});
}

/// @nodoc
class __$$OtpLoginRequestImplCopyWithImpl<$Res>
    extends _$OtpLoginRequestCopyWithImpl<$Res, _$OtpLoginRequestImpl>
    implements _$$OtpLoginRequestImplCopyWith<$Res> {
  __$$OtpLoginRequestImplCopyWithImpl(
      _$OtpLoginRequestImpl _value, $Res Function(_$OtpLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_id = freezed,
    Object? api_key = freezed,
  }) {
    return _then(_$OtpLoginRequestImpl(
      phone_id: freezed == phone_id
          ? _value.phone_id
          : phone_id // ignore: cast_nullable_to_non_nullable
              as String?,
      api_key: freezed == api_key
          ? _value.api_key
          : api_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpLoginRequestImpl implements _OtpLoginRequest {
  const _$OtpLoginRequestImpl({this.phone_id, this.api_key});

  factory _$OtpLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpLoginRequestImplFromJson(json);

  @override
  final String? phone_id;
  @override
  final String? api_key;

  @override
  String toString() {
    return 'OtpLoginRequest(phone_id: $phone_id, api_key: $api_key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpLoginRequestImpl &&
            (identical(other.phone_id, phone_id) ||
                other.phone_id == phone_id) &&
            (identical(other.api_key, api_key) || other.api_key == api_key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone_id, api_key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpLoginRequestImplCopyWith<_$OtpLoginRequestImpl> get copyWith =>
      __$$OtpLoginRequestImplCopyWithImpl<_$OtpLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _OtpLoginRequest implements OtpLoginRequest {
  const factory _OtpLoginRequest(
      {final String? phone_id, final String? api_key}) = _$OtpLoginRequestImpl;

  factory _OtpLoginRequest.fromJson(Map<String, dynamic> json) =
      _$OtpLoginRequestImpl.fromJson;

  @override
  String? get phone_id;
  @override
  String? get api_key;
  @override
  @JsonKey(ignore: true)
  _$$OtpLoginRequestImplCopyWith<_$OtpLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
