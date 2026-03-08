// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardDatasource)
const dashboardDatasourceProvider = DashboardDatasourceProvider._();

final class DashboardDatasourceProvider
    extends
        $FunctionalProvider<
          DashboardDatasource,
          DashboardDatasource,
          DashboardDatasource
        >
    with $Provider<DashboardDatasource> {
  const DashboardDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardDatasourceHash();

  @$internal
  @override
  $ProviderElement<DashboardDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardDatasource create(Ref ref) {
    return dashboardDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardDatasource>(value),
    );
  }
}

String _$dashboardDatasourceHash() =>
    r'898d0764ed9351dbe8db7de37052529cda73c509';

@ProviderFor(clusterStats)
const clusterStatsProvider = ClusterStatsProvider._();

final class ClusterStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ClusterStatsEntity>,
          ClusterStatsEntity,
          FutureOr<ClusterStatsEntity>
        >
    with
        $FutureModifier<ClusterStatsEntity>,
        $FutureProvider<ClusterStatsEntity> {
  const ClusterStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clusterStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clusterStatsHash();

  @$internal
  @override
  $FutureProviderElement<ClusterStatsEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ClusterStatsEntity> create(Ref ref) {
    return clusterStats(ref);
  }
}

String _$clusterStatsHash() => r'1592e007b846e3cabd9c1549ca2530497262f4f1';

@ProviderFor(riskDistribution)
const riskDistributionProvider = RiskDistributionProvider._();

final class RiskDistributionProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RiskDistributionEntity>>,
          List<RiskDistributionEntity>,
          FutureOr<List<RiskDistributionEntity>>
        >
    with
        $FutureModifier<List<RiskDistributionEntity>>,
        $FutureProvider<List<RiskDistributionEntity>> {
  const RiskDistributionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskDistributionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskDistributionHash();

  @$internal
  @override
  $FutureProviderElement<List<RiskDistributionEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RiskDistributionEntity>> create(Ref ref) {
    return riskDistribution(ref);
  }
}

String _$riskDistributionHash() => r'4ed109b037203c78481f5ccd342bb2232a289ab7';

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

String _$preventionMetricsHash() => r'e4117ab922a3468a192aa93dda4b5d2d8d51a51c';

@ProviderFor(financialImpact)
const financialImpactProvider = FinancialImpactProvider._();

final class FinancialImpactProvider
    extends
        $FunctionalProvider<
          AsyncValue<FinancialImpactEntity>,
          FinancialImpactEntity,
          FutureOr<FinancialImpactEntity>
        >
    with
        $FutureModifier<FinancialImpactEntity>,
        $FutureProvider<FinancialImpactEntity> {
  const FinancialImpactProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'financialImpactProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$financialImpactHash();

  @$internal
  @override
  $FutureProviderElement<FinancialImpactEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FinancialImpactEntity> create(Ref ref) {
    return financialImpact(ref);
  }
}

String _$financialImpactHash() => r'8b8c31fab7622e7c35c742b377efb85775d79ec0';

@ProviderFor(DashboardRefresh)
const dashboardRefreshProvider = DashboardRefreshProvider._();

final class DashboardRefreshProvider
    extends $AsyncNotifierProvider<DashboardRefresh, void> {
  const DashboardRefreshProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardRefreshProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardRefreshHash();

  @$internal
  @override
  DashboardRefresh create() => DashboardRefresh();
}

String _$dashboardRefreshHash() => r'f9135b229af7d320422f64025397d4b0721632d3';

abstract class _$DashboardRefresh extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
