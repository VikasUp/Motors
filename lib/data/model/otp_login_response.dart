import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_login_response.g.dart';

@JsonSerializable()
class OtpLoginResponse {
  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'user_is_sys_admin')
  final String userIsSysAdmin;

  @JsonKey(name: 'facebook_id')
  final String facebookId;

  @JsonKey(name: 'google_id')
  final String googleId;

  @JsonKey(name: 'phone_id')
  final String phoneId;

  @JsonKey(name: 'apple_id')
  final String appleId;

  @JsonKey(name: 'user_name')
  final String userName;

  @JsonKey(name: 'user_email')
  final String userEmail;

  @JsonKey(name: 'user_phone')
  final String userPhone;

  @JsonKey(name: 'user_address')
  final String userAddress;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'user_about_me')
  final String userAboutMe;

  @JsonKey(name: 'user_cover_photo')
  final String userCoverPhoto;

  @JsonKey(name: 'user_profile_photo')
  final String userProfilePhoto;

  @JsonKey(name: 'role_id')
  final String roleId;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'is_banned')
  final String isBanned;

  @JsonKey(name: 'added_date')
  final String addedDate;

  @JsonKey(name: 'added_date_timestamp')
  final String addedDateTimestamp;

  @JsonKey(name: 'device_token')
  final String deviceToken;

  @JsonKey(name: 'code')
  final String code;

  @JsonKey(name: 'overall_rating')
  final String overallRating;

  @JsonKey(name: 'whatsapp')
  final String whatsapp;

  @JsonKey(name: 'messenger')
  final String messenger;

  @JsonKey(name: 'follower_count')
  final String followerCount;

  @JsonKey(name: 'following_count')
  final String followingCount;

  @JsonKey(name: 'email_verify')
  final String emailVerify;

  @JsonKey(name: 'facebook_verify')
  final String facebookVerify;

  @JsonKey(name: 'google_verify')
  final String googleVerify;

  @JsonKey(name: 'phone_verify')
  final String phoneVerify;

  @JsonKey(name: 'apple_verify')
  final String appleVerify;

  @JsonKey(name: 'is_show_email')
  final String isShowEmail;

  @JsonKey(name: 'is_show_phone')
  final String isShowPhone;

  @JsonKey(name: 'is_verify_blue_mark')
  final String isVerifyBlueMark;

  @JsonKey(name: 'blue_mark_note')
  final String blueMarkNote;

  @JsonKey(name: 'remaining_post')
  final String remainingPost;

  @JsonKey(name: 'added_date_str')
  final String addedDateStr;

  @JsonKey(name: 'post_count')
  final String postCount;

  @JsonKey(name: 'rating_count')
  final String ratingCount;

  @JsonKey(name: 'is_followed')
  final String isFollowed;

  @JsonKey(name: 'is_blocked')
  final String isBlocked;

  @JsonKey(name: 'rating_details')
  final RatingDetails ratingDetails;

  OtpLoginResponse({
    required this.userId,
    required this.userIsSysAdmin,
    required this.facebookId,
    required this.googleId,
    required this.phoneId,
    required this.appleId,
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userAddress,
    required this.city,
    required this.userAboutMe,
    required this.userCoverPhoto,
    required this.userProfilePhoto,
    required this.roleId,
    required this.status,
    required this.isBanned,
    required this.addedDate,
    required this.addedDateTimestamp,
    required this.deviceToken,
    required this.code,
    required this.overallRating,
    required this.whatsapp,
    required this.messenger,
    required this.followerCount,
    required this.followingCount,
    required this.emailVerify,
    required this.facebookVerify,
    required this.googleVerify,
    required this.phoneVerify,
    required this.appleVerify,
    required this.isShowEmail,
    required this.isShowPhone,
    required this.isVerifyBlueMark,
    required this.blueMarkNote,
    required this.remainingPost,
    required this.addedDateStr,
    required this.postCount,
    required this.ratingCount,
    required this.isFollowed,
    required this.isBlocked,
    required this.ratingDetails, 
  });

  factory OtpLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginResponseFromJson(json);
}

@JsonSerializable()
class RatingDetails {
  @JsonKey(name: 'five_star_count')
  final String fiveStarCount;

  @JsonKey(name: 'five_star_percent')
  final String fiveStarPercent;

  @JsonKey(name: 'four_star_count')
  final String fourStarCount;

  @JsonKey(name: 'four_star_percent')
  final String fourStarPercent;

  @JsonKey(name: 'three_star_count')
  final String threeStarCount;

  @JsonKey(name: 'three_star_percent')
  final String threeStarPercent;

  @JsonKey(name: 'two_star_count')
  final String twoStarCount;

  @JsonKey(name: 'two_star_percent')
  final String twoStarPercent;

  @JsonKey(name: 'one_star_count')
  final String oneStarCount;

  @JsonKey(name: 'one_star_percent')
  final String oneStarPercent;

  @JsonKey(name: 'total_rating_count')
  final String totalRatingCount;

  @JsonKey(name: 'total_rating_value')
  final String totalRatingValue;

  RatingDetails({
    required this.fiveStarCount,
    required this.fiveStarPercent,
    required this.fourStarCount,
    required this.fourStarPercent,
    required this.threeStarCount,
    required this.threeStarPercent,
    required this.twoStarCount,
    required this.twoStarPercent,
    required this.oneStarCount,
    required this.oneStarPercent,
    required this.totalRatingCount,
    required this.totalRatingValue,
  });

  factory RatingDetails.fromJson(Map<String, dynamic> json) =>
      _$RatingDetailsFromJson(json);
}
