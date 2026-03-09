import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/faq_entity.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
abstract class FAQModel with _$FAQModel {
  const FAQModel._();

  const factory FAQModel({
    required String id,
    required String category,
    required String question,
    required String answer,
    required List<String> tags,
    required int helpfulCount,
    required int notHelpfulCount,
    required DateTime updatedAt,
  }) = _FAQModel;

  factory FAQModel.fromJson(Map<String, dynamic> json) =>
      _$FAQModelFromJson(json);

  FAQEntity toEntity() {
    FAQCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'general':
        categoryEnum = FAQCategory.general;
        break;
      case 'alerts':
        categoryEnum = FAQCategory.alerts;
        break;
      case 'fraud':
        categoryEnum = FAQCategory.fraud;
        break;
      case 'claims':
        categoryEnum = FAQCategory.claims;
        break;
      case 'patients':
        categoryEnum = FAQCategory.patients;
        break;
      case 'technical':
        categoryEnum = FAQCategory.technical;
        break;
      default:
        categoryEnum = FAQCategory.general;
    }

    return FAQEntity(
      id: id,
      category: categoryEnum,
      question: question,
      answer: answer,
      tags: tags,
      helpfulCount: helpfulCount,
      notHelpfulCount: notHelpfulCount,
      updatedAt: updatedAt,
    );
  }
}
