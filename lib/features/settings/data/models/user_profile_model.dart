import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_profile_entity.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const UserProfileModel._();

  const factory UserProfileModel({
    required String id,
    required String email,
    required String fullName,
    String? phoneNumber,
    String? department,
    required String role,
    String? avatarUrl,
    required DateTime joinedDate,
    DateTime? lastLoginAt,
    required bool isActive,
    String? bio,
    String? location,
    String? timezone,
    String? language,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  UserProfileEntity toEntity() {
    UserRole roleEnum;
    switch (role.toLowerCase()) {
      case 'admin':
        roleEnum = UserRole.admin;
        break;
      case 'manager':
        roleEnum = UserRole.manager;
        break;
      case 'analyst':
        roleEnum = UserRole.analyst;
        break;
      case 'operator':
        roleEnum = UserRole.operator;
        break;
      case 'viewer':
        roleEnum = UserRole.viewer;
        break;
      default:
        roleEnum = UserRole.viewer;
    }

    return UserProfileEntity(
      id: id,
      email: email,
      fullName: fullName,
      phoneNumber: phoneNumber,
      department: department,
      role: roleEnum,
      avatarUrl: avatarUrl,
      joinedDate: joinedDate,
      lastLoginAt: lastLoginAt,
      isActive: isActive,
      bio: bio,
      location: location,
      timezone: timezone,
      language: language,
    );
  }
}
