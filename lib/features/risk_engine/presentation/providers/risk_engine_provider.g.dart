// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_engine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(riskEngineDatasource)
const riskEngineDatasourceProvider = RiskEngineDatasourceProvider._();

final class RiskEngineDatasourceProvider
    extends
        $FunctionalProvider<
          RiskEngineDatasource,
          RiskEngineDatasource,
          RiskEngineDatasource
        >
    with $Provider<RiskEngineDatasource> {
  const RiskEngineDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskEngineDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskEngineDatasourceHash();

  @$internal
  @override
  $ProviderElement<RiskEngineDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RiskEngineDatasource create(Ref ref) {
    return riskEngineDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RiskEngineDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RiskEngineDatasource>(value),
    );
  }
}

String _$riskEngineDatasourceHash() =>
    r'efe38c52c2ffa1ed3ccd83d49bf0475724eadbb2';

@ProviderFor(RiskEngineFilter)
const riskEngineFilterProvider = RiskEngineFilterProvider._();

final class RiskEngineFilterProvider
    extends $NotifierProvider<RiskEngineFilter, RiskEngineFilterState> {
  const RiskEngineFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskEngineFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskEngineFilterHash();

  @$internal
  @override
  RiskEngineFilter create() => RiskEngineFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RiskEngineFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RiskEngineFilterState>(value),
    );
  }
}

String _$riskEngineFilterHash() => r'196fe95919bfb0022a0b3c6510e84025afc00954';

abstract class _$RiskEngineFilter extends $Notifier<RiskEngineFilterState> {
  RiskEngineFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RiskEngineFilterState, RiskEngineFilterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RiskEngineFilterState, RiskEngineFilterState>,
              RiskEngineFilterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(riskProfiles)
const riskProfilesProvider = RiskProfilesProvider._();

final class RiskProfilesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RiskProfileEntity>>,
          List<RiskProfileEntity>,
          FutureOr<List<RiskProfileEntity>>
        >
    with
        $FutureModifier<List<RiskProfileEntity>>,
        $FutureProvider<List<RiskProfileEntity>> {
  const RiskProfilesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskProfilesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskProfilesHash();

  @$internal
  @override
  $FutureProviderElement<List<RiskProfileEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RiskProfileEntity>> create(Ref ref) {
    return riskProfiles(ref);
  }
}

String _$riskProfilesHash() => r'6866b007475a9d35a099ddfd6733003718b69720';

@ProviderFor(riskProfileDetails)
const riskProfileDetailsProvider = RiskProfileDetailsFamily._();

final class RiskProfileDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<RiskProfileEntity>,
          RiskProfileEntity,
          FutureOr<RiskProfileEntity>
        >
    with
        $FutureModifier<RiskProfileEntity>,
        $FutureProvider<RiskProfileEntity> {
  const RiskProfileDetailsProvider._({
    required RiskProfileDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'riskProfileDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$riskProfileDetailsHash();

  @override
  String toString() {
    return r'riskProfileDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<RiskProfileEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RiskProfileEntity> create(Ref ref) {
    final argument = this.argument as String;
    return riskProfileDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RiskProfileDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$riskProfileDetailsHash() =>
    r'6771cde612b7c0e64e97d39f1fbbc624bb476f52';

final class RiskProfileDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<RiskProfileEntity>, String> {
  const RiskProfileDetailsFamily._()
    : super(
        retry: null,
        name: r'riskProfileDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RiskProfileDetailsProvider call(String id) =>
      RiskProfileDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'riskProfileDetailsProvider';
}

@ProviderFor(chronicDiseaseCohorts)
const chronicDiseaseCohortsProvider = ChronicDiseaseCohortsProvider._();

final class ChronicDiseaseCohortsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ChronicDiseaseCohortEntity>>,
          List<ChronicDiseaseCohortEntity>,
          FutureOr<List<ChronicDiseaseCohortEntity>>
        >
    with
        $FutureModifier<List<ChronicDiseaseCohortEntity>>,
        $FutureProvider<List<ChronicDiseaseCohortEntity>> {
  const ChronicDiseaseCohortsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chronicDiseaseCohortsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chronicDiseaseCohortsHash();

  @$internal
  @override
  $FutureProviderElement<List<ChronicDiseaseCohortEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ChronicDiseaseCohortEntity>> create(Ref ref) {
    return chronicDiseaseCohorts(ref);
  }
}

String _$chronicDiseaseCohortsHash() =>
    r'c7bcc49386bb77512824f258e3768cda629d139a';

@ProviderFor(riskEngineStats)
const riskEngineStatsProvider = RiskEngineStatsProvider._();

final class RiskEngineStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<RiskEngineStats>,
          RiskEngineStats,
          FutureOr<RiskEngineStats>
        >
    with $FutureModifier<RiskEngineStats>, $FutureProvider<RiskEngineStats> {
  const RiskEngineStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskEngineStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskEngineStatsHash();

  @$internal
  @override
  $FutureProviderElement<RiskEngineStats> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RiskEngineStats> create(Ref ref) {
    return riskEngineStats(ref);
  }
}

String _$riskEngineStatsHash() => r'4660edf824db7389ff4f449450cdeced67514b7e';
