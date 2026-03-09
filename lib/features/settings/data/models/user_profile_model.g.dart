// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      id: json['id'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      department: json['department'] as String?,
      role: json['role'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      joinedDate: DateTime.parse(json['joinedDate'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      isActive: json['isActive'] as bool,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      timezone: json['timezone'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'department': instance.department,
      'role': instance.role,
      'avatarUrl': instance.avatarUrl,
      'joinedDate': instance.joinedDate.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'isActive': instance.isActive,
      'bio': instance.bio,
      'location': instance.location,
      'timezone': instance.timezone,
      'language': instance.language,
    };
