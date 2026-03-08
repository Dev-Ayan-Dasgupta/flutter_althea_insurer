import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    required String name,
    required String role,
    String? organizationId,
    String? organizationName,
    String? phone,
    String? avatarUrl,
    DateTime? lastLoginAt,
    required DateTime createdAt,
  }) = _UserEntity;
}
