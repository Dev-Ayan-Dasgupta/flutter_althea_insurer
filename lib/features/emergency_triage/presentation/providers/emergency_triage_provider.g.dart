// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_triage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(emergencyTriageDatasource)
const emergencyTriageDatasourceProvider = EmergencyTriageDatasourceProvider._();

final class EmergencyTriageDatasourceProvider
    extends
        $FunctionalProvider<
          EmergencyTriageDatasource,
          EmergencyTriageDatasource,
          EmergencyTriageDatasource
        >
    with $Provider<EmergencyTriageDatasource> {
  const EmergencyTriageDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emergencyTriageDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emergencyTriageDatasourceHash();

  @$internal
  @override
  $ProviderElement<EmergencyTriageDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmergencyTriageDatasource create(Ref ref) {
    return emergencyTriageDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmergencyTriageDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmergencyTriageDatasource>(value),
    );
  }
}

String _$emergencyTriageDatasourceHash() =>
    r'16fb360abcd77eb160f8f728f1718be06ac1ec5a';

@ProviderFor(EmergencyTriageFilter)
const emergencyTriageFilterProvider = EmergencyTriageFilterProvider._();

final class EmergencyTriageFilterProvider
    extends
        $NotifierProvider<EmergencyTriageFilter, EmergencyTriageFilterState> {
  const EmergencyTriageFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emergencyTriageFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emergencyTriageFilterHash();

  @$internal
  @override
  EmergencyTriageFilter create() => EmergencyTriageFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmergencyTriageFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmergencyTriageFilterState>(value),
    );
  }
}

String _$emergencyTriageFilterHash() =>
    r'dc780b6de0f3b7443d219392adfe63041a12aae7';

abstract class _$EmergencyTriageFilter
    extends $Notifier<EmergencyTriageFilterState> {
  EmergencyTriageFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<EmergencyTriageFilterState, EmergencyTriageFilterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                EmergencyTriageFilterState,
                EmergencyTriageFilterState
              >,
              EmergencyTriageFilterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(emergencyCases)
const emergencyCasesProvider = EmergencyCasesProvider._();

final class EmergencyCasesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EmergencyCaseEntity>>,
          List<EmergencyCaseEntity>,
          FutureOr<List<EmergencyCaseEntity>>
        >
    with
        $FutureModifier<List<EmergencyCaseEntity>>,
        $FutureProvider<List<EmergencyCaseEntity>> {
  const EmergencyCasesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emergencyCasesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emergencyCasesHash();

  @$internal
  @override
  $FutureProviderElement<List<EmergencyCaseEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EmergencyCaseEntity>> create(Ref ref) {
    return emergencyCases(ref);
  }
}

String _$emergencyCasesHash() => r'5994d521b1501e9312e45f9f097ccb5d9ebcc0af';

@ProviderFor(emergencyCaseDetails)
const emergencyCaseDetailsProvider = EmergencyCaseDetailsFamily._();

final class EmergencyCaseDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<EmergencyCaseEntity>,
          EmergencyCaseEntity,
          FutureOr<EmergencyCaseEntity>
        >
    with
        $FutureModifier<EmergencyCaseEntity>,
        $FutureProvider<EmergencyCaseEntity> {
  const EmergencyCaseDetailsProvider._({
    required EmergencyCaseDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'emergencyCaseDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$emergencyCaseDetailsHash();

  @override
  String toString() {
    return r'emergencyCaseDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<EmergencyCaseEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EmergencyCaseEntity> create(Ref ref) {
    final argument = this.argument as String;
    return emergencyCaseDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is EmergencyCaseDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$emergencyCaseDetailsHash() =>
    r'ca32dfd838144d44f3bff18ebf796f6a2f6d94ac';

final class EmergencyCaseDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<EmergencyCaseEntity>, String> {
  const EmergencyCaseDetailsFamily._()
    : super(
        retry: null,
        name: r'emergencyCaseDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EmergencyCaseDetailsProvider call(String id) =>
      EmergencyCaseDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'emergencyCaseDetailsProvider';
}

@ProviderFor(emergencyTriageStats)
const emergencyTriageStatsProvider = EmergencyTriageStatsProvider._();

final class EmergencyTriageStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<EmergencyTriageStats>,
          EmergencyTriageStats,
          FutureOr<EmergencyTriageStats>
        >
    with
        $FutureModifier<EmergencyTriageStats>,
        $FutureProvider<EmergencyTriageStats> {
  const EmergencyTriageStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emergencyTriageStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emergencyTriageStatsHash();

  @$internal
  @override
  $FutureProviderElement<EmergencyTriageStats> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EmergencyTriageStats> create(Ref ref) {
    return emergencyTriageStats(ref);
  }
}

String _$emergencyTriageStatsHash() =>
    r'3d9a19468158b39b85903ee0ec95fb346d5f4f3d';

@ProviderFor(PreAuthApproval)
const preAuthApprovalProvider = PreAuthApprovalProvider._();

final class PreAuthApprovalProvider
    extends $AsyncNotifierProvider<PreAuthApproval, PreAuthEntity?> {
  const PreAuthApprovalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preAuthApprovalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preAuthApprovalHash();

  @$internal
  @override
  PreAuthApproval create() => PreAuthApproval();
}

String _$preAuthApprovalHash() => r'cd9b05a490ef7084a8d07a34726834fcd7745ba5';

abstract class _$PreAuthApproval extends $AsyncNotifier<PreAuthEntity?> {
  FutureOr<PreAuthEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PreAuthEntity?>, PreAuthEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PreAuthEntity?>, PreAuthEntity?>,
              AsyncValue<PreAuthEntity?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
