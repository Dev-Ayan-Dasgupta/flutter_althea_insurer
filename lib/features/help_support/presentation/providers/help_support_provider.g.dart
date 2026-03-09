// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_support_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(helpSupportDatasource)
const helpSupportDatasourceProvider = HelpSupportDatasourceProvider._();

final class HelpSupportDatasourceProvider
    extends
        $FunctionalProvider<
          HelpSupportDatasource,
          HelpSupportDatasource,
          HelpSupportDatasource
        >
    with $Provider<HelpSupportDatasource> {
  const HelpSupportDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'helpSupportDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$helpSupportDatasourceHash();

  @$internal
  @override
  $ProviderElement<HelpSupportDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HelpSupportDatasource create(Ref ref) {
    return helpSupportDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HelpSupportDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HelpSupportDatasource>(value),
    );
  }
}

String _$helpSupportDatasourceHash() =>
    r'0f5dd101dea179c8fa6aaf1a2ff03d7ce133bf38';

@ProviderFor(faqs)
const faqsProvider = FaqsProvider._();

final class FaqsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FAQEntity>>,
          List<FAQEntity>,
          FutureOr<List<FAQEntity>>
        >
    with $FutureModifier<List<FAQEntity>>, $FutureProvider<List<FAQEntity>> {
  const FaqsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'faqsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$faqsHash();

  @$internal
  @override
  $FutureProviderElement<List<FAQEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FAQEntity>> create(Ref ref) {
    return faqs(ref);
  }
}

String _$faqsHash() => r'55d556eef59cad74f52b5a19fb4f6522eeee899e';

@ProviderFor(faqsByCategory)
const faqsByCategoryProvider = FaqsByCategoryFamily._();

final class FaqsByCategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FAQEntity>>,
          List<FAQEntity>,
          FutureOr<List<FAQEntity>>
        >
    with $FutureModifier<List<FAQEntity>>, $FutureProvider<List<FAQEntity>> {
  const FaqsByCategoryProvider._({
    required FaqsByCategoryFamily super.from,
    required FAQCategory super.argument,
  }) : super(
         retry: null,
         name: r'faqsByCategoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$faqsByCategoryHash();

  @override
  String toString() {
    return r'faqsByCategoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<FAQEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FAQEntity>> create(Ref ref) {
    final argument = this.argument as FAQCategory;
    return faqsByCategory(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FaqsByCategoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$faqsByCategoryHash() => r'c686feb52d6497e2a1c585c7e35a963c3517e2c9';

final class FaqsByCategoryFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<FAQEntity>>, FAQCategory> {
  const FaqsByCategoryFamily._()
    : super(
        retry: null,
        name: r'faqsByCategoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FaqsByCategoryProvider call(FAQCategory category) =>
      FaqsByCategoryProvider._(argument: category, from: this);

  @override
  String toString() => r'faqsByCategoryProvider';
}

@ProviderFor(helpArticles)
const helpArticlesProvider = HelpArticlesProvider._();

final class HelpArticlesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HelpArticleEntity>>,
          List<HelpArticleEntity>,
          FutureOr<List<HelpArticleEntity>>
        >
    with
        $FutureModifier<List<HelpArticleEntity>>,
        $FutureProvider<List<HelpArticleEntity>> {
  const HelpArticlesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'helpArticlesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$helpArticlesHash();

  @$internal
  @override
  $FutureProviderElement<List<HelpArticleEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HelpArticleEntity>> create(Ref ref) {
    return helpArticles(ref);
  }
}

String _$helpArticlesHash() => r'5e9d434a924bf97c03ed747e7ae8f02ede75202a';

@ProviderFor(helpArticlesByCategory)
const helpArticlesByCategoryProvider = HelpArticlesByCategoryFamily._();

final class HelpArticlesByCategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HelpArticleEntity>>,
          List<HelpArticleEntity>,
          FutureOr<List<HelpArticleEntity>>
        >
    with
        $FutureModifier<List<HelpArticleEntity>>,
        $FutureProvider<List<HelpArticleEntity>> {
  const HelpArticlesByCategoryProvider._({
    required HelpArticlesByCategoryFamily super.from,
    required ArticleCategory super.argument,
  }) : super(
         retry: null,
         name: r'helpArticlesByCategoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$helpArticlesByCategoryHash();

  @override
  String toString() {
    return r'helpArticlesByCategoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<HelpArticleEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HelpArticleEntity>> create(Ref ref) {
    final argument = this.argument as ArticleCategory;
    return helpArticlesByCategory(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is HelpArticlesByCategoryProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$helpArticlesByCategoryHash() =>
    r'a84d362d008fb6e954b471054805d3684e65224d';

final class HelpArticlesByCategoryFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<HelpArticleEntity>>,
          ArticleCategory
        > {
  const HelpArticlesByCategoryFamily._()
    : super(
        retry: null,
        name: r'helpArticlesByCategoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HelpArticlesByCategoryProvider call(ArticleCategory category) =>
      HelpArticlesByCategoryProvider._(argument: category, from: this);

  @override
  String toString() => r'helpArticlesByCategoryProvider';
}

@ProviderFor(searchFaqs)
const searchFaqsProvider = SearchFaqsFamily._();

final class SearchFaqsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FAQEntity>>,
          List<FAQEntity>,
          FutureOr<List<FAQEntity>>
        >
    with $FutureModifier<List<FAQEntity>>, $FutureProvider<List<FAQEntity>> {
  const SearchFaqsProvider._({
    required SearchFaqsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchFaqsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchFaqsHash();

  @override
  String toString() {
    return r'searchFaqsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<FAQEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FAQEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return searchFaqs(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchFaqsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchFaqsHash() => r'91fc9bd2838f9f9f267f85a6f06a6aaa3650f16f';

final class SearchFaqsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<FAQEntity>>, String> {
  const SearchFaqsFamily._()
    : super(
        retry: null,
        name: r'searchFaqsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchFaqsProvider call(String query) =>
      SearchFaqsProvider._(argument: query, from: this);

  @override
  String toString() => r'searchFaqsProvider';
}

@ProviderFor(searchArticles)
const searchArticlesProvider = SearchArticlesFamily._();

final class SearchArticlesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HelpArticleEntity>>,
          List<HelpArticleEntity>,
          FutureOr<List<HelpArticleEntity>>
        >
    with
        $FutureModifier<List<HelpArticleEntity>>,
        $FutureProvider<List<HelpArticleEntity>> {
  const SearchArticlesProvider._({
    required SearchArticlesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchArticlesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchArticlesHash();

  @override
  String toString() {
    return r'searchArticlesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<HelpArticleEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HelpArticleEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return searchArticles(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchArticlesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchArticlesHash() => r'2ef25797868c80b266c81ca0334aadfcfef1e59a';

final class SearchArticlesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<HelpArticleEntity>>, String> {
  const SearchArticlesFamily._()
    : super(
        retry: null,
        name: r'searchArticlesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchArticlesProvider call(String query) =>
      SearchArticlesProvider._(argument: query, from: this);

  @override
  String toString() => r'searchArticlesProvider';
}
