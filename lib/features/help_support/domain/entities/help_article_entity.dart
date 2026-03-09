import 'package:freezed_annotation/freezed_annotation.dart';

part 'help_article_entity.freezed.dart';

enum ArticleCategory {
  gettingStarted,
  features,
  bestPractices,
  troubleshooting,
  tutorials,
  integration,
}

@freezed
abstract class HelpArticleEntity with _$HelpArticleEntity {
  const factory HelpArticleEntity({
    required String id,
    required ArticleCategory category,
    required String title,
    required String summary,
    required String content,
    required List<String> tags,
    required int readTime,
    required int views,
    required DateTime publishedAt,
    required DateTime updatedAt,
  }) = _HelpArticleEntity;
}
