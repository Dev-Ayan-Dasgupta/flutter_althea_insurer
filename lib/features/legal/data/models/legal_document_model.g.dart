// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegalDocumentModel _$LegalDocumentModelFromJson(Map<String, dynamic> json) =>
    _LegalDocumentModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      version: json['version'] as String,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => LegalSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LegalDocumentModelToJson(_LegalDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'version': instance.version,
      'sections': instance.sections,
    };

_LegalSectionModel _$LegalSectionModelFromJson(Map<String, dynamic> json) =>
    _LegalSectionModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      bulletPoints: (json['bulletPoints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LegalSectionModelToJson(_LegalSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'bulletPoints': instance.bulletPoints,
    };
