import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

enum UserRole { admin, manager, analyst, operator, viewer }

@freezed
abstract class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String id,
    required String email,
    required String fullName,
    String? phoneNumber,
    String? department,
    required UserRole role,
    String? avatarUrl,
    required DateTime joinedDate,
    DateTime? lastLoginAt,
    required bool isActive,
    String? bio,
    String? location,
    String? timezone,
    String? language,
  }) = _UserProfileEntity;
}
