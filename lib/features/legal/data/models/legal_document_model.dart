import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/legal_document_entity.dart';

part 'legal_document_model.freezed.dart';
part 'legal_document_model.g.dart';

@freezed
abstract class LegalDocumentModel with _$LegalDocumentModel {
  const LegalDocumentModel._();

  const factory LegalDocumentModel({
    required String id,
    required String title,
    required String content,
    required DateTime lastUpdated,
    required String version,
    List<LegalSectionModel>? sections,
  }) = _LegalDocumentModel;

  factory LegalDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$LegalDocumentModelFromJson(json);

  LegalDocumentEntity toEntity() {
    return LegalDocumentEntity(
      id: id,
      title: title,
      content: content,
      lastUpdated: lastUpdated,
      version: version,
      sections: sections?.map((s) => s.toEntity()).toList(),
    );
  }
}

@freezed
abstract class LegalSectionModel with _$LegalSectionModel {
  const LegalSectionModel._();

  const factory LegalSectionModel({
    required String id,
    required String title,
    required String content,
    List<String>? bulletPoints,
  }) = _LegalSectionModel;

  factory LegalSectionModel.fromJson(Map<String, dynamic> json) =>
      _$LegalSectionModelFromJson(json);

  LegalSectionEntity toEntity() {
    return LegalSectionEntity(
      id: id,
      title: title,
      content: content,
      bulletPoints: bulletPoints,
    );
  }
}
