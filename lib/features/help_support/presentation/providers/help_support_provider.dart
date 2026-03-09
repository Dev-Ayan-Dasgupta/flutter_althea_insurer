import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/help_support_datasource.dart';
import '../../domain/entities/faq_entity.dart';
import '../../domain/entities/help_article_entity.dart';

part 'help_support_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
HelpSupportDatasource helpSupportDatasource(Ref ref) {
  return HelpSupportDatasource();
}

// FAQs Provider
@riverpod
Future<List<FAQEntity>> faqs(Ref ref) async {
  final datasource = ref.watch(helpSupportDatasourceProvider);
  final models = await datasource.fetchFAQs();
  return models.map((model) => model.toEntity()).toList();
}

// FAQs by Category Provider
@riverpod
Future<List<FAQEntity>> faqsByCategory(Ref ref, FAQCategory category) async {
  final allFaqs = await ref.watch(faqsProvider.future);
  return allFaqs.where((faq) => faq.category == category).toList();
}

// Help Articles Provider
@riverpod
Future<List<HelpArticleEntity>> helpArticles(Ref ref) async {
  final datasource = ref.watch(helpSupportDatasourceProvider);
  final models = await datasource.fetchHelpArticles();
  return models.map((model) => model.toEntity()).toList();
}

// Help Articles by Category Provider
@riverpod
Future<List<HelpArticleEntity>> helpArticlesByCategory(
  Ref ref,
  ArticleCategory category,
) async {
  final allArticles = await ref.watch(helpArticlesProvider.future);
  return allArticles.where((article) => article.category == category).toList();
}

// Search FAQs Provider
@riverpod
Future<List<FAQEntity>> searchFaqs(Ref ref, String query) async {
  if (query.isEmpty) return [];

  final allFaqs = await ref.watch(faqsProvider.future);
  final lowerQuery = query.toLowerCase();

  return allFaqs.where((faq) {
    return faq.question.toLowerCase().contains(lowerQuery) ||
        faq.answer.toLowerCase().contains(lowerQuery) ||
        faq.tags.any((tag) => tag.toLowerCase().contains(lowerQuery));
  }).toList();
}

// Search Articles Provider
@riverpod
Future<List<HelpArticleEntity>> searchArticles(Ref ref, String query) async {
  if (query.isEmpty) return [];

  final allArticles = await ref.watch(helpArticlesProvider.future);
  final lowerQuery = query.toLowerCase();

  return allArticles.where((article) {
    return article.title.toLowerCase().contains(lowerQuery) ||
        article.summary.toLowerCase().contains(lowerQuery) ||
        article.content.toLowerCase().contains(lowerQuery) ||
        article.tags.any((tag) => tag.toLowerCase().contains(lowerQuery));
  }).toList();
}
