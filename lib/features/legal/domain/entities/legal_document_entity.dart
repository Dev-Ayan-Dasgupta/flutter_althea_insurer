import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_document_entity.freezed.dart';

@freezed
abstract class LegalDocumentEntity with _$LegalDocumentEntity {
  const factory LegalDocumentEntity({
    required String id,
    required String title,
    required String content,
    required DateTime lastUpdated,
    required String version,
    List<LegalSectionEntity>? sections,
  }) = _LegalDocumentEntity;
}

@freezed
abstract class LegalSectionEntity with _$LegalSectionEntity {
  const factory LegalSectionEntity({
    required String id,
    required String title,
    required String content,
    List<String>? bulletPoints,
  }) = _LegalSectionEntity;
}
