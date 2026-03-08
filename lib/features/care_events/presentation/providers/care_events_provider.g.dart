// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'care_events_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(careEventsDatasource)
const careEventsDatasourceProvider = CareEventsDatasourceProvider._();

final class CareEventsDatasourceProvider
    extends
        $FunctionalProvider<
          CareEventsDatasource,
          CareEventsDatasource,
          CareEventsDatasource
        >
    with $Provider<CareEventsDatasource> {
  const CareEventsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'careEventsDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$careEventsDatasourceHash();

  @$internal
  @override
  $ProviderElement<CareEventsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CareEventsDatasource create(Ref ref) {
    return careEventsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CareEventsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CareEventsDatasource>(value),
    );
  }
}

String _$careEventsDatasourceHash() =>
    r'c53c87aa867d5fe1e6d4dc97ad83c1d7d3803a55';

@ProviderFor(CareEventsFilter)
const careEventsFilterProvider = CareEventsFilterProvider._();

final class CareEventsFilterProvider
    extends $NotifierProvider<CareEventsFilter, CareEventsFilterState> {
  const CareEventsFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'careEventsFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$careEventsFilterHash();

  @$internal
  @override
  CareEventsFilter create() => CareEventsFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CareEventsFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CareEventsFilterState>(value),
    );
  }
}

String _$careEventsFilterHash() => r'e5add2acd5cfde0e9365d9fa86194b458330cc40';

abstract class _$CareEventsFilter extends $Notifier<CareEventsFilterState> {
  CareEventsFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CareEventsFilterState, CareEventsFilterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CareEventsFilterState, CareEventsFilterState>,
              CareEventsFilterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(careEvents)
const careEventsProvider = CareEventsProvider._();

final class CareEventsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CareEventEntity>>,
          List<CareEventEntity>,
          FutureOr<List<CareEventEntity>>
        >
    with
        $FutureModifier<List<CareEventEntity>>,
        $FutureProvider<List<CareEventEntity>> {
  const CareEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'careEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$careEventsHash();

  @$internal
  @override
  $FutureProviderElement<List<CareEventEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CareEventEntity>> create(Ref ref) {
    return careEvents(ref);
  }
}

String _$careEventsHash() => r'7f13c6c01de81586e3aac8f1809479f27cac1e14';

@ProviderFor(careEventDetails)
const careEventDetailsProvider = CareEventDetailsFamily._();

final class CareEventDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<CareEventEntity>,
          CareEventEntity,
          FutureOr<CareEventEntity>
        >
    with $FutureModifier<CareEventEntity>, $FutureProvider<CareEventEntity> {
  const CareEventDetailsProvider._({
    required CareEventDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'careEventDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$careEventDetailsHash();

  @override
  String toString() {
    return r'careEventDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CareEventEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CareEventEntity> create(Ref ref) {
    final argument = this.argument as String;
    return careEventDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CareEventDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$careEventDetailsHash() => r'b1ca9cfd67b22835b41be7259819ad009b2a8732';

final class CareEventDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CareEventEntity>, String> {
  const CareEventDetailsFamily._()
    : super(
        retry: null,
        name: r'careEventDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CareEventDetailsProvider call(String id) =>
      CareEventDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'careEventDetailsProvider';
}

@ProviderFor(careEventsStats)
const careEventsStatsProvider = CareEventsStatsProvider._();

final class CareEventsStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<CareEventsStats>,
          CareEventsStats,
          FutureOr<CareEventsStats>
        >
    with $FutureModifier<CareEventsStats>, $FutureProvider<CareEventsStats> {
  const CareEventsStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'careEventsStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$careEventsStatsHash();

  @$internal
  @override
  $FutureProviderElement<CareEventsStats> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CareEventsStats> create(Ref ref) {
    return careEventsStats(ref);
  }
}

String _$careEventsStatsHash() => r'bbeb04f060e54418a59286e0c5a38c95f3decb0d';

@ProviderFor(flaggedCareEvents)
const flaggedCareEventsProvider = FlaggedCareEventsProvider._();

final class FlaggedCareEventsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CareEventEntity>>,
          List<CareEventEntity>,
          FutureOr<List<CareEventEntity>>
        >
    with
        $FutureModifier<List<CareEventEntity>>,
        $FutureProvider<List<CareEventEntity>> {
  const FlaggedCareEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'flaggedCareEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$flaggedCareEventsHash();

  @$internal
  @override
  $FutureProviderElement<List<CareEventEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CareEventEntity>> create(Ref ref) {
    return flaggedCareEvents(ref);
  }
}

String _$flaggedCareEventsHash() => r'1dbc56f06250dd4685dee3c0d6dba2e000c9b808';

@ProviderFor(auditFlags)
const auditFlagsProvider = AuditFlagsFamily._();

final class AuditFlagsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AuditFlagEntity>>,
          List<AuditFlagEntity>,
          FutureOr<List<AuditFlagEntity>>
        >
    with
        $FutureModifier<List<AuditFlagEntity>>,
        $FutureProvider<List<AuditFlagEntity>> {
  const AuditFlagsProvider._({
    required AuditFlagsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'auditFlagsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$auditFlagsHash();

  @override
  String toString() {
    return r'auditFlagsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AuditFlagEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AuditFlagEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return auditFlags(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AuditFlagsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$auditFlagsHash() => r'272be9b7a3ee36e4db2cea79292e6ab84c4124ab';

final class AuditFlagsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<AuditFlagEntity>>, String> {
  const AuditFlagsFamily._()
    : super(
        retry: null,
        name: r'auditFlagsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AuditFlagsProvider call(String eventId) =>
      AuditFlagsProvider._(argument: eventId, from: this);

  @override
  String toString() => r'auditFlagsProvider';
}

@ProviderFor(verificationDetails)
const verificationDetailsProvider = VerificationDetailsFamily._();

final class VerificationDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<VerificationDetailEntity>,
          VerificationDetailEntity,
          FutureOr<VerificationDetailEntity>
        >
    with
        $FutureModifier<VerificationDetailEntity>,
        $FutureProvider<VerificationDetailEntity> {
  const VerificationDetailsProvider._({
    required VerificationDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'verificationDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$verificationDetailsHash();

  @override
  String toString() {
    return r'verificationDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<VerificationDetailEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VerificationDetailEntity> create(Ref ref) {
    final argument = this.argument as String;
    return verificationDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VerificationDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$verificationDetailsHash() =>
    r'278cbc8fdb73b22edad3cf103a51f4eda8b9adb7';

final class VerificationDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<VerificationDetailEntity>, String> {
  const VerificationDetailsFamily._()
    : super(
        retry: null,
        name: r'verificationDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VerificationDetailsProvider call(String eventId) =>
      VerificationDetailsProvider._(argument: eventId, from: this);

  @override
  String toString() => r'verificationDetailsProvider';
}

@ProviderFor(auditStatistics)
const auditStatisticsProvider = AuditStatisticsProvider._();

final class AuditStatisticsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuditStatistics>,
          AuditStatistics,
          FutureOr<AuditStatistics>
        >
    with $FutureModifier<AuditStatistics>, $FutureProvider<AuditStatistics> {
  const AuditStatisticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'auditStatisticsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$auditStatisticsHash();

  @$internal
  @override
  $FutureProviderElement<AuditStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuditStatistics> create(Ref ref) {
    return auditStatistics(ref);
  }
}

String _$auditStatisticsHash() => r'3698dd3f901e6cdeb9534eedcf92ab73e79c010c';
