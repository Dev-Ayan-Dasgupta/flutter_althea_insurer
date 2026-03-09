// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HelpArticleModel _$HelpArticleModelFromJson(Map<String, dynamic> json) =>
    _HelpArticleModel(
      id: json['id'] as String,
      category: json['category'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      readTime: (json['readTime'] as num).toInt(),
      views: (json['views'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HelpArticleModelToJson(_HelpArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'title': instance.title,
      'summary': instance.summary,
      'content': instance.content,
      'tags': instance.tags,
      'readTime': instance.readTime,
      'views': instance.views,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
