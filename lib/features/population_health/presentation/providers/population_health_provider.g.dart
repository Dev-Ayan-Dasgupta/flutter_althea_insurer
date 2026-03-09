// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'population_health_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(populationHealthDatasource)
const populationHealthDatasourceProvider =
    PopulationHealthDatasourceProvider._();

final class PopulationHealthDatasourceProvider
    extends
        $FunctionalProvider<
          PopulationHealthDatasource,
          PopulationHealthDatasource,
          PopulationHealthDatasource
        >
    with $Provider<PopulationHealthDatasource> {
  const PopulationHealthDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'populationHealthDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$populationHealthDatasourceHash();

  @$internal
  @override
  $ProviderElement<PopulationHealthDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PopulationHealthDatasource create(Ref ref) {
    return populationHealthDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PopulationHealthDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PopulationHealthDatasource>(value),
    );
  }
}

String _$populationHealthDatasourceHash() =>
    r'2514e1318cf9bd2b32c94725aaceee532041f510';

@ProviderFor(diseasePrevalence)
const diseasePrevalenceProvider = DiseasePrevalenceProvider._();

final class DiseasePrevalenceProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DiseasePrevalenceEntity>>,
          List<DiseasePrevalenceEntity>,
          FutureOr<List<DiseasePrevalenceEntity>>
        >
    with
        $FutureModifier<List<DiseasePrevalenceEntity>>,
        $FutureProvider<List<DiseasePrevalenceEntity>> {
  const DiseasePrevalenceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'diseasePrevalenceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$diseasePrevalenceHash();

  @$internal
  @override
  $FutureProviderElement<List<DiseasePrevalenceEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DiseasePrevalenceEntity>> create(Ref ref) {
    return diseasePrevalence(ref);
  }
}

String _$diseasePrevalenceHash() => r'0e50755d54a8aef482cb47eda5f16a325cb6fa34';

@ProviderFor(healthTrends)
const healthTrendsProvider = HealthTrendsProvider._();

final class HealthTrendsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HealthTrendEntity>>,
          List<HealthTrendEntity>,
          FutureOr<List<HealthTrendEntity>>
        >
    with
        $FutureModifier<List<HealthTrendEntity>>,
        $FutureProvider<List<HealthTrendEntity>> {
  const HealthTrendsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healthTrendsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healthTrendsHash();

  @$internal
  @override
  $FutureProviderElement<List<HealthTrendEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HealthTrendEntity>> create(Ref ref) {
    return healthTrends(ref);
  }
}

String _$healthTrendsHash() => r'286097a21e40143955fc7d22004781c7966baa99';

@ProviderFor(adherenceCohorts)
const adherenceCohortsProvider = AdherenceCohortsProvider._();

final class AdherenceCohortsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AdherenceCohortEntity>>,
          List<AdherenceCohortEntity>,
          FutureOr<List<AdherenceCohortEntity>>
        >
    with
        $FutureModifier<List<AdherenceCohortEntity>>,
        $FutureProvider<List<AdherenceCohortEntity>> {
  const AdherenceCohortsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adherenceCohortsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adherenceCohortsHash();

  @$internal
  @override
  $FutureProviderElement<List<AdherenceCohortEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AdherenceCohortEntity>> create(Ref ref) {
    return adherenceCohorts(ref);
  }
}

String _$adherenceCohortsHash() => r'd065a380997406b1b149f0427b0a2a08d784b7a0';

@ProviderFor(riskSegmentation)
const riskSegmentationProvider = RiskSegmentationProvider._();

final class RiskSegmentationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RiskSegmentationEntity>>,
          List<RiskSegmentationEntity>,
          FutureOr<List<RiskSegmentationEntity>>
        >
    with
        $FutureModifier<List<RiskSegmentationEntity>>,
        $FutureProvider<List<RiskSegmentationEntity>> {
  const RiskSegmentationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskSegmentationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskSegmentationHash();

  @$internal
  @override
  $FutureProviderElement<List<RiskSegmentationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RiskSegmentationEntity>> create(Ref ref) {
    return riskSegmentation(ref);
  }
}

String _$riskSegmentationHash() => r'720d61edfeee0a31868cc71466a10a436baf9eba';

@ProviderFor(populationHealthStats)
const populationHealthStatsProvider = PopulationHealthStatsProvider._();

final class PopulationHealthStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PopulationHealthStatistics>,
          PopulationHealthStatistics,
          FutureOr<PopulationHealthStatistics>
        >
    with
        $FutureModifier<PopulationHealthStatistics>,
        $FutureProvider<PopulationHealthStatistics> {
  const PopulationHealthStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'populationHealthStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$populationHealthStatsHash();

  @$internal
  @override
  $FutureProviderElement<PopulationHealthStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PopulationHealthStatistics> create(Ref ref) {
    return populationHealthStats(ref);
  }
}

String _$populationHealthStatsHash() =>
    r'dcc1f4d20cb50864e9f1b6f920e84c330a49bf71';
