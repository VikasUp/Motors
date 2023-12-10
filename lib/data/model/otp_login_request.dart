import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_login_request.freezed.dart';
part 'otp_login_request.g.dart';

@freezed
abstract class OtpLoginRequest with _$OtpLoginRequest {
  const factory OtpLoginRequest({
    String ? phone_id,
    String ? api_key, 
  }) = _OtpLoginRequest;

  factory OtpLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginRequestFromJson(json);
}
