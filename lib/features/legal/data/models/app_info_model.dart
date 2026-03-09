import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/app_info_entity.dart';

part 'app_info_model.freezed.dart';
part 'app_info_model.g.dart';

@freezed
abstract class AppInfoModel with _$AppInfoModel {
  const AppInfoModel._();

  const factory AppInfoModel({
    required String appName,
    required String version,
    required String buildNumber,
    required String description,
    required String companyName,
    required String companyWebsite,
    required String supportEmail,
    required String supportPhone,
    required List<String> features,
    required List<TeamMemberModel> team,
    required List<TechnologyModel> technologies,
    required String license,
  }) = _AppInfoModel;

  factory AppInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AppInfoModelFromJson(json);

  AppInfoEntity toEntity() {
    return AppInfoEntity(
      appName: appName,
      version: version,
      buildNumber: buildNumber,
      description: description,
      companyName: companyName,
      companyWebsite: companyWebsite,
      supportEmail: supportEmail,
      supportPhone: supportPhone,
      features: features,
      team: team.map((t) => t.toEntity()).toList(),
      technologies: technologies.map((t) => t.toEntity()).toList(),
      license: license,
    );
  }
}

@freezed
abstract class TeamMemberModel with _$TeamMemberModel {
  const TeamMemberModel._();

  const factory TeamMemberModel({
    required String name,
    required String role,
    String? imageUrl,
  }) = _TeamMemberModel;

  factory TeamMemberModel.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberModelFromJson(json);

  TeamMemberEntity toEntity() {
    return TeamMemberEntity(name: name, role: role, imageUrl: imageUrl);
  }
}

@freezed
abstract class TechnologyModel with _$TechnologyModel {
  const TechnologyModel._();

  const factory TechnologyModel({
    required String name,
    required String version,
    String? description,
  }) = _TechnologyModel;

  factory TechnologyModel.fromJson(Map<String, dynamic> json) =>
      _$TechnologyModelFromJson(json);

  TechnologyEntity toEntity() {
    return TechnologyEntity(
      name: name,
      version: version,
      description: description,
    );
  }
}
