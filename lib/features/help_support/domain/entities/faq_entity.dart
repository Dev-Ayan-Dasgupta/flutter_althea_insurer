import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_entity.freezed.dart';

enum FAQCategory { general, alerts, fraud, claims, patients, technical }

@freezed
abstract class FAQEntity with _$FAQEntity {
  const factory FAQEntity({
    required String id,
    required FAQCategory category,
    required String question,
    required String answer,
    required List<String> tags,
    required int helpfulCount,
    required int notHelpfulCount,
    required DateTime updatedAt,
  }) = _FAQEntity;
}
