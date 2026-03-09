import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_entity.freezed.dart';

@freezed
abstract class AppInfoEntity with _$AppInfoEntity {
  const factory AppInfoEntity({
    required String appName,
    required String version,
    required String buildNumber,
    required String description,
    required String companyName,
    required String companyWebsite,
    required String supportEmail,
    required String supportPhone,
    required List<String> features,
    required List<TeamMemberEntity> team,
    required List<TechnologyEntity> technologies,
    required String license,
  }) = _AppInfoEntity;
}

@freezed
abstract class TeamMemberEntity with _$TeamMemberEntity {
  const factory TeamMemberEntity({
    required String name,
    required String role,
    String? imageUrl,
  }) = _TeamMemberEntity;
}

@freezed
abstract class TechnologyEntity with _$TechnologyEntity {
  const factory TechnologyEntity({
    required String name,
    required String version,
    String? description,
  }) = _TechnologyEntity;
}
