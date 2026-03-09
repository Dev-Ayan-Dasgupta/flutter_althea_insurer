// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_monitor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(safetyMonitorDatasource)
const safetyMonitorDatasourceProvider = SafetyMonitorDatasourceProvider._();

final class SafetyMonitorDatasourceProvider
    extends
        $FunctionalProvider<
          SafetyMonitorDatasource,
          SafetyMonitorDatasource,
          SafetyMonitorDatasource
        >
    with $Provider<SafetyMonitorDatasource> {
  const SafetyMonitorDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'safetyMonitorDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$safetyMonitorDatasourceHash();

  @$internal
  @override
  $ProviderElement<SafetyMonitorDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SafetyMonitorDatasource create(Ref ref) {
    return safetyMonitorDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SafetyMonitorDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SafetyMonitorDatasource>(value),
    );
  }
}

String _$safetyMonitorDatasourceHash() =>
    r'6f0c1ff12969f5b482cf4205e06b7de6967762ff';

@ProviderFor(safetyCohorts)
const safetyCohortsProvider = SafetyCohortsProvider._();

final class SafetyCohortsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CohortEntity>>,
          List<CohortEntity>,
          FutureOr<List<CohortEntity>>
        >
    with
        $FutureModifier<List<CohortEntity>>,
        $FutureProvider<List<CohortEntity>> {
  const SafetyCohortsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'safetyCohortsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$safetyCohortsHash();

  @$internal
  @override
  $FutureProviderElement<List<CohortEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CohortEntity>> create(Ref ref) {
    return safetyCohorts(ref);
  }
}

String _$safetyCohortsHash() => r'1b0eac879fbd28556e702d57f0af42f49328fe03';

@ProviderFor(safetyAlerts)
const safetyAlertsProvider = SafetyAlertsFamily._();

final class SafetyAlertsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SafetyAlertEntity>>,
          List<SafetyAlertEntity>,
          FutureOr<List<SafetyAlertEntity>>
        >
    with
        $FutureModifier<List<SafetyAlertEntity>>,
        $FutureProvider<List<SafetyAlertEntity>> {
  const SafetyAlertsProvider._({
    required SafetyAlertsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'safetyAlertsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$safetyAlertsHash();

  @override
  String toString() {
    return r'safetyAlertsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<SafetyAlertEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SafetyAlertEntity>> create(Ref ref) {
    final argument = this.argument as String?;
    return safetyAlerts(ref, cohortType: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SafetyAlertsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$safetyAlertsHash() => r'9a00c6d4357b0c89833a91fa814c9fecee151a7c';

final class SafetyAlertsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<SafetyAlertEntity>>, String?> {
  const SafetyAlertsFamily._()
    : super(
        retry: null,
        name: r'safetyAlertsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SafetyAlertsProvider call({String? cohortType}) =>
      SafetyAlertsProvider._(argument: cohortType, from: this);

  @override
  String toString() => r'safetyAlertsProvider';
}

@ProviderFor(riskAssessments)
const riskAssessmentsProvider = RiskAssessmentsFamily._();

final class RiskAssessmentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RiskAssessmentEntity>>,
          List<RiskAssessmentEntity>,
          FutureOr<List<RiskAssessmentEntity>>
        >
    with
        $FutureModifier<List<RiskAssessmentEntity>>,
        $FutureProvider<List<RiskAssessmentEntity>> {
  const RiskAssessmentsProvider._({
    required RiskAssessmentsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'riskAssessmentsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$riskAssessmentsHash();

  @override
  String toString() {
    return r'riskAssessmentsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<RiskAssessmentEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RiskAssessmentEntity>> create(Ref ref) {
    final argument = this.argument as String?;
    return riskAssessments(ref, cohortType: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RiskAssessmentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$riskAssessmentsHash() => r'b3fa323355db692bf81fa8585fd589159257fed9';

final class RiskAssessmentsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<RiskAssessmentEntity>>,
          String?
        > {
  const RiskAssessmentsFamily._()
    : super(
        retry: null,
        name: r'riskAssessmentsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RiskAssessmentsProvider call({String? cohortType}) =>
      RiskAssessmentsProvider._(argument: cohortType, from: this);

  @override
  String toString() => r'riskAssessmentsProvider';
}

@ProviderFor(preventiveActions)
const preventiveActionsProvider = PreventiveActionsFamily._();

final class PreventiveActionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PreventiveActionEntity>>,
          List<PreventiveActionEntity>,
          FutureOr<List<PreventiveActionEntity>>
        >
    with
        $FutureModifier<List<PreventiveActionEntity>>,
        $FutureProvider<List<PreventiveActionEntity>> {
  const PreventiveActionsProvider._({
    required PreventiveActionsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'preventiveActionsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$preventiveActionsHash();

  @override
  String toString() {
    return r'preventiveActionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<PreventiveActionEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PreventiveActionEntity>> create(Ref ref) {
    final argument = this.argument as String?;
    return preventiveActions(ref, cohortType: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PreventiveActionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$preventiveActionsHash() => r'fef4ac7c462432a2807106ed19ec55fd0585bf75';

final class PreventiveActionsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<PreventiveActionEntity>>,
          String?
        > {
  const PreventiveActionsFamily._()
    : super(
        retry: null,
        name: r'preventiveActionsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PreventiveActionsProvider call({String? cohortType}) =>
      PreventiveActionsProvider._(argument: cohortType, from: this);

  @override
  String toString() => r'preventiveActionsProvider';
}

@ProviderFor(safetyMonitorStats)
const safetyMonitorStatsProvider = SafetyMonitorStatsProvider._();

final class SafetyMonitorStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<SafetyMonitorStatistics>,
          SafetyMonitorStatistics,
          FutureOr<SafetyMonitorStatistics>
        >
    with
        $FutureModifier<SafetyMonitorStatistics>,
        $FutureProvider<SafetyMonitorStatistics> {
  const SafetyMonitorStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'safetyMonitorStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$safetyMonitorStatsHash();

  @$internal
  @override
  $FutureProviderElement<SafetyMonitorStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SafetyMonitorStatistics> create(Ref ref) {
    return safetyMonitorStats(ref);
  }
}

String _$safetyMonitorStatsHash() =>
    r'b49e48bec84704de01f06026361a458b16e29d5f';
