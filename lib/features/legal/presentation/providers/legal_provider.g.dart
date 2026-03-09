// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(legalDatasource)
const legalDatasourceProvider = LegalDatasourceProvider._();

final class LegalDatasourceProvider
    extends
        $FunctionalProvider<LegalDatasource, LegalDatasource, LegalDatasource>
    with $Provider<LegalDatasource> {
  const LegalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'legalDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$legalDatasourceHash();

  @$internal
  @override
  $ProviderElement<LegalDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LegalDatasource create(Ref ref) {
    return legalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LegalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LegalDatasource>(value),
    );
  }
}

String _$legalDatasourceHash() => r'd488c46cb509cd80d19e02dd595a7fbaddf871a6';

@ProviderFor(privacyPolicy)
const privacyPolicyProvider = PrivacyPolicyProvider._();

final class PrivacyPolicyProvider
    extends
        $FunctionalProvider<
          AsyncValue<LegalDocumentEntity>,
          LegalDocumentEntity,
          FutureOr<LegalDocumentEntity>
        >
    with
        $FutureModifier<LegalDocumentEntity>,
        $FutureProvider<LegalDocumentEntity> {
  const PrivacyPolicyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privacyPolicyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privacyPolicyHash();

  @$internal
  @override
  $FutureProviderElement<LegalDocumentEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LegalDocumentEntity> create(Ref ref) {
    return privacyPolicy(ref);
  }
}

String _$privacyPolicyHash() => r'50400860e53ae9a07b75f27f72a41e1868ef1940';

@ProviderFor(termsOfService)
const termsOfServiceProvider = TermsOfServiceProvider._();

final class TermsOfServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<LegalDocumentEntity>,
          LegalDocumentEntity,
          FutureOr<LegalDocumentEntity>
        >
    with
        $FutureModifier<LegalDocumentEntity>,
        $FutureProvider<LegalDocumentEntity> {
  const TermsOfServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'termsOfServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$termsOfServiceHash();

  @$internal
  @override
  $FutureProviderElement<LegalDocumentEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LegalDocumentEntity> create(Ref ref) {
    return termsOfService(ref);
  }
}

String _$termsOfServiceHash() => r'932649f0fba6daad72347bab58123b1beceb5e88';

@ProviderFor(appInfo)
const appInfoProvider = AppInfoProvider._();

final class AppInfoProvider
    extends
        $FunctionalProvider<
          AsyncValue<AppInfoEntity>,
          AppInfoEntity,
          FutureOr<AppInfoEntity>
        >
    with $FutureModifier<AppInfoEntity>, $FutureProvider<AppInfoEntity> {
  const AppInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appInfoHash();

  @$internal
  @override
  $FutureProviderElement<AppInfoEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AppInfoEntity> create(Ref ref) {
    return appInfo(ref);
  }
}

String _$appInfoHash() => r'ee80a36b6de1b59cd00e56327d96c11d875d1ee3';
