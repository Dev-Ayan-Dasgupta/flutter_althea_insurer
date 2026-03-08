// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claims_prevention_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(claimsPreventionDatasource)
const claimsPreventionDatasourceProvider =
    ClaimsPreventionDatasourceProvider._();

final class ClaimsPreventionDatasourceProvider
    extends
        $FunctionalProvider<
          ClaimsPreventionDatasource,
          ClaimsPreventionDatasource,
          ClaimsPreventionDatasource
        >
    with $Provider<ClaimsPreventionDatasource> {
  const ClaimsPreventionDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimsPreventionDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimsPreventionDatasourceHash();

  @$internal
  @override
  $ProviderElement<ClaimsPreventionDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClaimsPreventionDatasource create(Ref ref) {
    return claimsPreventionDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaimsPreventionDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaimsPreventionDatasource>(value),
    );
  }
}

String _$claimsPreventionDatasourceHash() =>
    r'51b7d592e29b1dc2c494a7d5531baaecab498429';

@ProviderFor(preventionMetrics)
const preventionMetricsProvider = PreventionMetricsProvider._();

final class PreventionMetricsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PreventionMetricEntity>>,
          List<PreventionMetricEntity>,
          FutureOr<List<PreventionMetricEntity>>
        >
    with
        $FutureModifier<List<PreventionMetricEntity>>,
        $FutureProvider<List<PreventionMetricEntity>> {
  const PreventionMetricsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preventionMetricsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preventionMetricsHash();

  @$internal
  @override
  $FutureProviderElement<List<PreventionMetricEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PreventionMetricEntity>> create(Ref ref) {
    return preventionMetrics(ref);
  }
}

String _$preventionMetricsHash() => r'89bddbd5ad0b2fbb48c5e3b9993f4c04ae9de555';

@ProviderFor(costAvoidance)
const costAvoidanceProvider = CostAvoidanceProvider._();

final class CostAvoidanceProvider
    extends
        $FunctionalProvider<
          AsyncValue<CostAvoidanceEntity>,
          CostAvoidanceEntity,
          FutureOr<CostAvoidanceEntity>
        >
    with
        $FutureModifier<CostAvoidanceEntity>,
        $FutureProvider<CostAvoidanceEntity> {
  const CostAvoidanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'costAvoidanceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$costAvoidanceHash();

  @$internal
  @override
  $FutureProviderElement<CostAvoidanceEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CostAvoidanceEntity> create(Ref ref) {
    return costAvoidance(ref);
  }
}

String _$costAvoidanceHash() => r'7c1d86f2b941d5759d1d7a83b6296f1f198629c0';

@ProviderFor(interventionImpact)
const interventionImpactProvider = InterventionImpactProvider._();

final class InterventionImpactProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InterventionImpactEntity>>,
          List<InterventionImpactEntity>,
          FutureOr<List<InterventionImpactEntity>>
        >
    with
        $FutureModifier<List<InterventionImpactEntity>>,
        $FutureProvider<List<InterventionImpactEntity>> {
  const InterventionImpactProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interventionImpactProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interventionImpactHash();

  @$internal
  @override
  $FutureProviderElement<List<InterventionImpactEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InterventionImpactEntity>> create(Ref ref) {
    return interventionImpact(ref);
  }
}

String _$interventionImpactHash() =>
    r'8968f63b08a25a444322b3e891e53d4ee20ba5c6';

@ProviderFor(claimsPreventionStats)
const claimsPreventionStatsProvider = ClaimsPreventionStatsProvider._();

final class ClaimsPreventionStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ClaimsPreventionStats>,
          ClaimsPreventionStats,
          FutureOr<ClaimsPreventionStats>
        >
    with
        $FutureModifier<ClaimsPreventionStats>,
        $FutureProvider<ClaimsPreventionStats> {
  const ClaimsPreventionStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimsPreventionStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimsPreventionStatsHash();

  @$internal
  @override
  $FutureProviderElement<ClaimsPreventionStats> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ClaimsPreventionStats> create(Ref ref) {
    return claimsPreventionStats(ref);
  }
}

String _$claimsPreventionStatsHash() =>
    r'b2cae8a7dd096e1a5865ddd339ad0408b506a06b';
