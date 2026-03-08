import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
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
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
    id: id,
    email: email,
    name: name,
    role: role,
    organizationId: organizationId,
    organizationName: organizationName,
    phone: phone,
    avatarUrl: avatarUrl,
    lastLoginAt: lastLoginAt,
    createdAt: createdAt,
  );

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
    id: entity.id,
    email: entity.email,
    name: entity.name,
    role: entity.role,
    organizationId: entity.organizationId,
    organizationName: entity.organizationName,
    phone: entity.phone,
    avatarUrl: entity.avatarUrl,
    lastLoginAt: entity.lastLoginAt,
    createdAt: entity.createdAt,
  );
}
