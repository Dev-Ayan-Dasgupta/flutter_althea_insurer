import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/help_article_entity.dart';

part 'help_article_model.freezed.dart';
part 'help_article_model.g.dart';

@freezed
abstract class HelpArticleModel with _$HelpArticleModel {
  const HelpArticleModel._();

  const factory HelpArticleModel({
    required String id,
    required String category,
    required String title,
    required String summary,
    required String content,
    required List<String> tags,
    required int readTime,
    required int views,
    required DateTime publishedAt,
    required DateTime updatedAt,
  }) = _HelpArticleModel;

  factory HelpArticleModel.fromJson(Map<String, dynamic> json) =>
      _$HelpArticleModelFromJson(json);

  HelpArticleEntity toEntity() {
    ArticleCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'getting_started':
        categoryEnum = ArticleCategory.gettingStarted;
        break;
      case 'features':
        categoryEnum = ArticleCategory.features;
        break;
      case 'best_practices':
        categoryEnum = ArticleCategory.bestPractices;
        break;
      case 'troubleshooting':
        categoryEnum = ArticleCategory.troubleshooting;
        break;
      case 'tutorials':
        categoryEnum = ArticleCategory.tutorials;
        break;
      case 'integration':
        categoryEnum = ArticleCategory.integration;
        break;
      default:
        categoryEnum = ArticleCategory.gettingStarted;
    }

    return HelpArticleEntity(
      id: id,
      category: categoryEnum,
      title: title,
      summary: summary,
      content: content,
      tags: tags,
      readTime: readTime,
      views: views,
      publishedAt: publishedAt,
      updatedAt: updatedAt,
    );
  }
}
