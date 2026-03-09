// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppInfoModel _$AppInfoModelFromJson(Map<String, dynamic> json) =>
    _AppInfoModel(
      appName: json['appName'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      description: json['description'] as String,
      companyName: json['companyName'] as String,
      companyWebsite: json['companyWebsite'] as String,
      supportEmail: json['supportEmail'] as String,
      supportPhone: json['supportPhone'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      team: (json['team'] as List<dynamic>)
          .map((e) => TeamMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => TechnologyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      license: json['license'] as String,
    );

Map<String, dynamic> _$AppInfoModelToJson(_AppInfoModel instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'description': instance.description,
      'companyName': instance.companyName,
      'companyWebsite': instance.companyWebsite,
      'supportEmail': instance.supportEmail,
      'supportPhone': instance.supportPhone,
      'features': instance.features,
      'team': instance.team,
      'technologies': instance.technologies,
      'license': instance.license,
    };

_TeamMemberModel _$TeamMemberModelFromJson(Map<String, dynamic> json) =>
    _TeamMemberModel(
      name: json['name'] as String,
      role: json['role'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$TeamMemberModelToJson(_TeamMemberModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'imageUrl': instance.imageUrl,
    };

_TechnologyModel _$TechnologyModelFromJson(Map<String, dynamic> json) =>
    _TechnologyModel(
      name: json['name'] as String,
      version: json['version'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TechnologyModelToJson(_TechnologyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
    };
