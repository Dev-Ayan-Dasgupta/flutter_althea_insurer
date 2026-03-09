// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_adherence_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(medicationAdherenceDatasource)
const medicationAdherenceDatasourceProvider =
    MedicationAdherenceDatasourceProvider._();

final class MedicationAdherenceDatasourceProvider
    extends
        $FunctionalProvider<
          MedicationAdherenceDatasource,
          MedicationAdherenceDatasource,
          MedicationAdherenceDatasource
        >
    with $Provider<MedicationAdherenceDatasource> {
  const MedicationAdherenceDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'medicationAdherenceDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$medicationAdherenceDatasourceHash();

  @$internal
  @override
  $ProviderElement<MedicationAdherenceDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MedicationAdherenceDatasource create(Ref ref) {
    return medicationAdherenceDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MedicationAdherenceDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MedicationAdherenceDatasource>(
        value,
      ),
    );
  }
}

String _$medicationAdherenceDatasourceHash() =>
    r'3c6f26c35bbbfcfa291272eb0a4abd9c55e809df';

@ProviderFor(patientAdherence)
const patientAdherenceProvider = PatientAdherenceProvider._();

final class PatientAdherenceProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PatientAdherenceEntity>>,
          List<PatientAdherenceEntity>,
          FutureOr<List<PatientAdherenceEntity>>
        >
    with
        $FutureModifier<List<PatientAdherenceEntity>>,
        $FutureProvider<List<PatientAdherenceEntity>> {
  const PatientAdherenceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patientAdherenceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patientAdherenceHash();

  @$internal
  @override
  $FutureProviderElement<List<PatientAdherenceEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PatientAdherenceEntity>> create(Ref ref) {
    return patientAdherence(ref);
  }
}

String _$patientAdherenceHash() => r'e671a34ea5b3c18e29a9b52442ec0edf6f3dca2d';

@ProviderFor(patientMedications)
const patientMedicationsProvider = PatientMedicationsFamily._();

final class PatientMedicationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MedicationEntity>>,
          List<MedicationEntity>,
          FutureOr<List<MedicationEntity>>
        >
    with
        $FutureModifier<List<MedicationEntity>>,
        $FutureProvider<List<MedicationEntity>> {
  const PatientMedicationsProvider._({
    required PatientMedicationsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'patientMedicationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$patientMedicationsHash();

  @override
  String toString() {
    return r'patientMedicationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<MedicationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<MedicationEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return patientMedications(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientMedicationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$patientMedicationsHash() =>
    r'e6159f751944ad849cb14b7a53934394c3fe7798';

final class PatientMedicationsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<MedicationEntity>>, String> {
  const PatientMedicationsFamily._()
    : super(
        retry: null,
        name: r'patientMedicationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PatientMedicationsProvider call(String patientId) =>
      PatientMedicationsProvider._(argument: patientId, from: this);

  @override
  String toString() => r'patientMedicationsProvider';
}

@ProviderFor(adherenceRecords)
const adherenceRecordsProvider = AdherenceRecordsFamily._();

final class AdherenceRecordsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AdherenceRecordEntity>>,
          List<AdherenceRecordEntity>,
          FutureOr<List<AdherenceRecordEntity>>
        >
    with
        $FutureModifier<List<AdherenceRecordEntity>>,
        $FutureProvider<List<AdherenceRecordEntity>> {
  const AdherenceRecordsProvider._({
    required AdherenceRecordsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'adherenceRecordsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$adherenceRecordsHash();

  @override
  String toString() {
    return r'adherenceRecordsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AdherenceRecordEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AdherenceRecordEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return adherenceRecords(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AdherenceRecordsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$adherenceRecordsHash() => r'f9cd00eebc4a615801fa849665e8147ba5382458';

final class AdherenceRecordsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<AdherenceRecordEntity>>,
          String
        > {
  const AdherenceRecordsFamily._()
    : super(
        retry: null,
        name: r'adherenceRecordsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AdherenceRecordsProvider call(String patientId) =>
      AdherenceRecordsProvider._(argument: patientId, from: this);

  @override
  String toString() => r'adherenceRecordsProvider';
}

@ProviderFor(medicationInterventions)
const medicationInterventionsProvider = MedicationInterventionsProvider._();

final class MedicationInterventionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<InterventionEntity>>,
          List<InterventionEntity>,
          FutureOr<List<InterventionEntity>>
        >
    with
        $FutureModifier<List<InterventionEntity>>,
        $FutureProvider<List<InterventionEntity>> {
  const MedicationInterventionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'medicationInterventionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$medicationInterventionsHash();

  @$internal
  @override
  $FutureProviderElement<List<InterventionEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<InterventionEntity>> create(Ref ref) {
    return medicationInterventions(ref);
  }
}

String _$medicationInterventionsHash() =>
    r'57b2e9fece1d23431017f865dd76861e977e09fa';

@ProviderFor(adherenceStatistics)
const adherenceStatisticsProvider = AdherenceStatisticsProvider._();

final class AdherenceStatisticsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AdherenceStatistics>,
          AdherenceStatistics,
          FutureOr<AdherenceStatistics>
        >
    with
        $FutureModifier<AdherenceStatistics>,
        $FutureProvider<AdherenceStatistics> {
  const AdherenceStatisticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adherenceStatisticsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adherenceStatisticsHash();

  @$internal
  @override
  $FutureProviderElement<AdherenceStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AdherenceStatistics> create(Ref ref) {
    return adherenceStatistics(ref);
  }
}

String _$adherenceStatisticsHash() =>
    r'59de51a17591f3b9cd5f1680713e5d484a277aea';
