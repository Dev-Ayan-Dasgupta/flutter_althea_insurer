// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_alerts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(liveAlertsDatasource)
const liveAlertsDatasourceProvider = LiveAlertsDatasourceProvider._();

final class LiveAlertsDatasourceProvider
    extends
        $FunctionalProvider<
          LiveAlertsDatasource,
          LiveAlertsDatasource,
          LiveAlertsDatasource
        >
    with $Provider<LiveAlertsDatasource> {
  const LiveAlertsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveAlertsDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveAlertsDatasourceHash();

  @$internal
  @override
  $ProviderElement<LiveAlertsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LiveAlertsDatasource create(Ref ref) {
    return liveAlertsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiveAlertsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiveAlertsDatasource>(value),
    );
  }
}

String _$liveAlertsDatasourceHash() =>
    r'93d867cb7f5d1c88b025728408efc237c1f65bed';

@ProviderFor(liveAlerts)
const liveAlertsProvider = LiveAlertsProvider._();

final class LiveAlertsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LiveAlertEntity>>,
          List<LiveAlertEntity>,
          FutureOr<List<LiveAlertEntity>>
        >
    with
        $FutureModifier<List<LiveAlertEntity>>,
        $FutureProvider<List<LiveAlertEntity>> {
  const LiveAlertsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveAlertsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveAlertsHash();

  @$internal
  @override
  $FutureProviderElement<List<LiveAlertEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LiveAlertEntity>> create(Ref ref) {
    return liveAlerts(ref);
  }
}

String _$liveAlertsHash() => r'ac33945a990dc0b13e17b1ca38a862da98c8b872';

@ProviderFor(alertActions)
const alertActionsProvider = AlertActionsFamily._();

final class AlertActionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AlertActionEntity>>,
          List<AlertActionEntity>,
          FutureOr<List<AlertActionEntity>>
        >
    with
        $FutureModifier<List<AlertActionEntity>>,
        $FutureProvider<List<AlertActionEntity>> {
  const AlertActionsProvider._({
    required AlertActionsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'alertActionsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$alertActionsHash();

  @override
  String toString() {
    return r'alertActionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AlertActionEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AlertActionEntity>> create(Ref ref) {
    final argument = this.argument as String;
    return alertActions(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AlertActionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$alertActionsHash() => r'39f02fcfbd352c62ca0d3d4be5396366752fcb39';

final class AlertActionsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<AlertActionEntity>>, String> {
  const AlertActionsFamily._()
    : super(
        retry: null,
        name: r'alertActionsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AlertActionsProvider call(String alertId) =>
      AlertActionsProvider._(argument: alertId, from: this);

  @override
  String toString() => r'alertActionsProvider';
}

@ProviderFor(filteredAlerts)
const filteredAlertsProvider = FilteredAlertsFamily._();

final class FilteredAlertsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LiveAlertEntity>>,
          List<LiveAlertEntity>,
          FutureOr<List<LiveAlertEntity>>
        >
    with
        $FutureModifier<List<LiveAlertEntity>>,
        $FutureProvider<List<LiveAlertEntity>> {
  const FilteredAlertsProvider._({
    required FilteredAlertsFamily super.from,
    required AlertFilterEntity super.argument,
  }) : super(
         retry: null,
         name: r'filteredAlertsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$filteredAlertsHash();

  @override
  String toString() {
    return r'filteredAlertsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<LiveAlertEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LiveAlertEntity>> create(Ref ref) {
    final argument = this.argument as AlertFilterEntity;
    return filteredAlerts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredAlertsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filteredAlertsHash() => r'475ec1b83eca19f174d44f581bc67553f2c8700c';

final class FilteredAlertsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<LiveAlertEntity>>,
          AlertFilterEntity
        > {
  const FilteredAlertsFamily._()
    : super(
        retry: null,
        name: r'filteredAlertsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FilteredAlertsProvider call(AlertFilterEntity filter) =>
      FilteredAlertsProvider._(argument: filter, from: this);

  @override
  String toString() => r'filteredAlertsProvider';
}

@ProviderFor(alertStatistics)
const alertStatisticsProvider = AlertStatisticsProvider._();

final class AlertStatisticsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AlertStatistics>,
          AlertStatistics,
          FutureOr<AlertStatistics>
        >
    with $FutureModifier<AlertStatistics>, $FutureProvider<AlertStatistics> {
  const AlertStatisticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alertStatisticsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertStatisticsHash();

  @$internal
  @override
  $FutureProviderElement<AlertStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AlertStatistics> create(Ref ref) {
    return alertStatistics(ref);
  }
}

String _$alertStatisticsHash() => r'1d17888e7d89f3be7d3607bfe4ba8a44a70172e5';
