// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FAQModel _$FAQModelFromJson(Map<String, dynamic> json) => _FAQModel(
  id: json['id'] as String,
  category: json['category'] as String,
  question: json['question'] as String,
  answer: json['answer'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  helpfulCount: (json['helpfulCount'] as num).toInt(),
  notHelpfulCount: (json['notHelpfulCount'] as num).toInt(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$FAQModelToJson(_FAQModel instance) => <String, dynamic>{
  'id': instance.id,
  'category': instance.category,
  'question': instance.question,
  'answer': instance.answer,
  'tags': instance.tags,
  'helpfulCount': instance.helpfulCount,
  'notHelpfulCount': instance.notHelpfulCount,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
