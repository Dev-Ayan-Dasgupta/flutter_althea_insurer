// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insuree_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(insureeDatasource)
const insureeDatasourceProvider = InsureeDatasourceProvider._();

final class InsureeDatasourceProvider
    extends
        $FunctionalProvider<
          InsureeDatasource,
          InsureeDatasource,
          InsureeDatasource
        >
    with $Provider<InsureeDatasource> {
  const InsureeDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insureeDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insureeDatasourceHash();

  @$internal
  @override
  $ProviderElement<InsureeDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InsureeDatasource create(Ref ref) {
    return insureeDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InsureeDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InsureeDatasource>(value),
    );
  }
}

String _$insureeDatasourceHash() => r'd263dc20bfb4358b84351fc55b5cebd351877b70';

@ProviderFor(insurees)
const insureesProvider = InsureesProvider._();

final class InsureesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InsureeEntity>>,
          List<InsureeEntity>,
          FutureOr<List<InsureeEntity>>
        >
    with
        $FutureModifier<List<InsureeEntity>>,
        $FutureProvider<List<InsureeEntity>> {
  const InsureesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insureesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insureesHash();

  @$internal
  @override
  $FutureProviderElement<List<InsureeEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InsureeEntity>> create(Ref ref) {
    return insurees(ref);
  }
}

String _$insureesHash() => r'43c1b82dac2e96bf2611357f5786feab25b56c1f';

@ProviderFor(activeInsurees)
const activeInsureesProvider = ActiveInsureesProvider._();

final class ActiveInsureesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InsureeEntity>>,
          List<InsureeEntity>,
          FutureOr<List<InsureeEntity>>
        >
    with
        $FutureModifier<List<InsureeEntity>>,
        $FutureProvider<List<InsureeEntity>> {
  const ActiveInsureesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeInsureesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeInsureesHash();

  @$internal
  @override
  $FutureProviderElement<List<InsureeEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InsureeEntity>> create(Ref ref) {
    return activeInsurees(ref);
  }
}

String _$activeInsureesHash() => r'92576f1a9b9d45535477d53f0f820694bf86b66e';

@ProviderFor(expiringInsurees)
const expiringInsureesProvider = ExpiringInsureesProvider._();

final class ExpiringInsureesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InsureeEntity>>,
          List<InsureeEntity>,
          FutureOr<List<InsureeEntity>>
        >
    with
        $FutureModifier<List<InsureeEntity>>,
        $FutureProvider<List<InsureeEntity>> {
  const ExpiringInsureesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expiringInsureesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expiringInsureesHash();

  @$internal
  @override
  $FutureProviderElement<List<InsureeEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InsureeEntity>> create(Ref ref) {
    return expiringInsurees(ref);
  }
}

String _$expiringInsureesHash() => r'4348c1c78a39b3abd7b57c182b0669065cb38dc6';

@ProviderFor(pendingPaymentInsurees)
const pendingPaymentInsureesProvider = PendingPaymentInsureesProvider._();

final class PendingPaymentInsureesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InsureeEntity>>,
          List<InsureeEntity>,
          FutureOr<List<InsureeEntity>>
        >
    with
        $FutureModifier<List<InsureeEntity>>,
        $FutureProvider<List<InsureeEntity>> {
  const PendingPaymentInsureesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pendingPaymentInsureesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pendingPaymentInsureesHash();

  @$internal
  @override
  $FutureProviderElement<List<InsureeEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InsureeEntity>> create(Ref ref) {
    return pendingPaymentInsurees(ref);
  }
}

String _$pendingPaymentInsureesHash() =>
    r'd66bcb8a9f0b6055f139e3e90179c4a4876ffda2';

@ProviderFor(insureeCount)
const insureeCountProvider = InsureeCountProvider._();

final class InsureeCountProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, int>>,
          Map<String, int>,
          FutureOr<Map<String, int>>
        >
    with $FutureModifier<Map<String, int>>, $FutureProvider<Map<String, int>> {
  const InsureeCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insureeCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insureeCountHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, int>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, int>> create(Ref ref) {
    return insureeCount(ref);
  }
}

String _$insureeCountHash() => r'd73f4450568e4c642a69406ea0e21078ce4e6b17';

@ProviderFor(SelectedInsurees)
const selectedInsureesProvider = SelectedInsureesProvider._();

final class SelectedInsureesProvider
    extends $NotifierProvider<SelectedInsurees, List<String>> {
  const SelectedInsureesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedInsureesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedInsureesHash();

  @$internal
  @override
  SelectedInsurees create() => SelectedInsurees();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$selectedInsureesHash() => r'7675aaef6e622b6b886f3df3bf1b2b1e4b7a0b08';

abstract class _$SelectedInsurees extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
