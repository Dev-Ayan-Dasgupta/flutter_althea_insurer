// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_detection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fraudDetectionDatasource)
const fraudDetectionDatasourceProvider = FraudDetectionDatasourceProvider._();

final class FraudDetectionDatasourceProvider
    extends
        $FunctionalProvider<
          FraudDetectionDatasource,
          FraudDetectionDatasource,
          FraudDetectionDatasource
        >
    with $Provider<FraudDetectionDatasource> {
  const FraudDetectionDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fraudDetectionDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fraudDetectionDatasourceHash();

  @$internal
  @override
  $ProviderElement<FraudDetectionDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FraudDetectionDatasource create(Ref ref) {
    return fraudDetectionDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FraudDetectionDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FraudDetectionDatasource>(value),
    );
  }
}

String _$fraudDetectionDatasourceHash() =>
    r'ad729e8b9a833df37f6ace1b5e068725cc0df28b';

@ProviderFor(fraudAlerts)
const fraudAlertsProvider = FraudAlertsProvider._();

final class FraudAlertsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FraudAlertEntity>>,
          List<FraudAlertEntity>,
          FutureOr<List<FraudAlertEntity>>
        >
    with
        $FutureModifier<List<FraudAlertEntity>>,
        $FutureProvider<List<FraudAlertEntity>> {
  const FraudAlertsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fraudAlertsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fraudAlertsHash();

  @$internal
  @override
  $FutureProviderElement<List<FraudAlertEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FraudAlertEntity>> create(Ref ref) {
    return fraudAlerts(ref);
  }
}

String _$fraudAlertsHash() => r'4a1d41c19302c8f482c4675fafa9cd763f2569c6';

@ProviderFor(claimVerifications)
const claimVerificationsProvider = ClaimVerificationsProvider._();

final class ClaimVerificationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ClaimVerificationEntity>>,
          List<ClaimVerificationEntity>,
          FutureOr<List<ClaimVerificationEntity>>
        >
    with
        $FutureModifier<List<ClaimVerificationEntity>>,
        $FutureProvider<List<ClaimVerificationEntity>> {
  const ClaimVerificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimVerificationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimVerificationsHash();

  @$internal
  @override
  $FutureProviderElement<List<ClaimVerificationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ClaimVerificationEntity>> create(Ref ref) {
    return claimVerifications(ref);
  }
}

String _$claimVerificationsHash() =>
    r'f3a274784c9881fbb18a1bbd1efc30482d897604';

@ProviderFor(fraudPatterns)
const fraudPatternsProvider = FraudPatternsProvider._();

final class FraudPatternsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FraudPatternEntity>>,
          List<FraudPatternEntity>,
          FutureOr<List<FraudPatternEntity>>
        >
    with
        $FutureModifier<List<FraudPatternEntity>>,
        $FutureProvider<List<FraudPatternEntity>> {
  const FraudPatternsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fraudPatternsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fraudPatternsHash();

  @$internal
  @override
  $FutureProviderElement<List<FraudPatternEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FraudPatternEntity>> create(Ref ref) {
    return fraudPatterns(ref);
  }
}

String _$fraudPatternsHash() => r'e7864eda690c843fdf34353932d9bb65ef97d288';

@ProviderFor(investigationCases)
const investigationCasesProvider = InvestigationCasesProvider._();

final class InvestigationCasesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InvestigationCaseEntity>>,
          List<InvestigationCaseEntity>,
          FutureOr<List<InvestigationCaseEntity>>
        >
    with
        $FutureModifier<List<InvestigationCaseEntity>>,
        $FutureProvider<List<InvestigationCaseEntity>> {
  const InvestigationCasesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'investigationCasesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$investigationCasesHash();

  @$internal
  @override
  $FutureProviderElement<List<InvestigationCaseEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InvestigationCaseEntity>> create(Ref ref) {
    return investigationCases(ref);
  }
}

String _$investigationCasesHash() =>
    r'0beb7897ddc02c97c812b9157809f0ad9b09ff80';

@ProviderFor(fraudDetectionStats)
const fraudDetectionStatsProvider = FraudDetectionStatsProvider._();

final class FraudDetectionStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<FraudDetectionStatistics>,
          FraudDetectionStatistics,
          FutureOr<FraudDetectionStatistics>
        >
    with
        $FutureModifier<FraudDetectionStatistics>,
        $FutureProvider<FraudDetectionStatistics> {
  const FraudDetectionStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fraudDetectionStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fraudDetectionStatsHash();

  @$internal
  @override
  $FutureProviderElement<FraudDetectionStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FraudDetectionStatistics> create(Ref ref) {
    return fraudDetectionStats(ref);
  }
}

String _$fraudDetectionStatsHash() =>
    r'd5488d50af929af5c07fc4e61e0ffa572bbc6389';
