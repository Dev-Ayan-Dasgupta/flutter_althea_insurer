import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/legal_datasource.dart';
import '../../domain/entities/legal_document_entity.dart';
import '../../domain/entities/app_info_entity.dart';

part 'legal_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
LegalDatasource legalDatasource(Ref ref) {
  return LegalDatasource();
}

// Privacy Policy Provider
@riverpod
Future<LegalDocumentEntity> privacyPolicy(Ref ref) async {
  final datasource = ref.watch(legalDatasourceProvider);
  final model = await datasource.fetchPrivacyPolicy();
  return model.toEntity();
}

// Terms of Service Provider
@riverpod
Future<LegalDocumentEntity> termsOfService(Ref ref) async {
  final datasource = ref.watch(legalDatasourceProvider);
  final model = await datasource.fetchTermsOfService();
  return model.toEntity();
}

// App Info Provider
@riverpod
Future<AppInfoEntity> appInfo(Ref ref) async {
  final datasource = ref.watch(legalDatasourceProvider);
  final model = await datasource.fetchAppInfo();
  return model.toEntity();
}
