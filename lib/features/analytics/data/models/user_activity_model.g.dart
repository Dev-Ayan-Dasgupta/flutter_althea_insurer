// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserActivityModel _$UserActivityModelFromJson(Map<String, dynamic> json) =>
    _UserActivityModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      activityType: json['activityType'] as String,
      description: json['description'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      targetId: json['targetId'] as String?,
      targetType: json['targetType'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UserActivityModelToJson(_UserActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'activityType': instance.activityType,
      'description': instance.description,
      'timestamp': instance.timestamp.toIso8601String(),
      'targetId': instance.targetId,
      'targetType': instance.targetType,
      'metadata': instance.metadata,
    };
