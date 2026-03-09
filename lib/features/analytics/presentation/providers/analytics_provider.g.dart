// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(analyticsDatasource)
const analyticsDatasourceProvider = AnalyticsDatasourceProvider._();

final class AnalyticsDatasourceProvider
    extends
        $FunctionalProvider<
          AnalyticsDatasource,
          AnalyticsDatasource,
          AnalyticsDatasource
        >
    with $Provider<AnalyticsDatasource> {
  const AnalyticsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsDatasourceHash();

  @$internal
  @override
  $ProviderElement<AnalyticsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnalyticsDatasource create(Ref ref) {
    return analyticsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyticsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyticsDatasource>(value),
    );
  }
}

String _$analyticsDatasourceHash() =>
    r'1f0a4d4c89c5aa2c5c80c4b676d2513b92cf07a9';

@ProviderFor(userActivities)
const userActivitiesProvider = UserActivitiesProvider._();

final class UserActivitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserActivityEntity>>,
          List<UserActivityEntity>,
          FutureOr<List<UserActivityEntity>>
        >
    with
        $FutureModifier<List<UserActivityEntity>>,
        $FutureProvider<List<UserActivityEntity>> {
  const UserActivitiesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userActivitiesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userActivitiesHash();

  @$internal
  @override
  $FutureProviderElement<List<UserActivityEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UserActivityEntity>> create(Ref ref) {
    return userActivities(ref);
  }
}

String _$userActivitiesHash() => r'2c8fe3b6d6243d686d025c5cb44d4c599e1cc37a';

@ProviderFor(analyticsStats)
const analyticsStatsProvider = AnalyticsStatsProvider._();

final class AnalyticsStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AnalyticsStatsEntity>,
          AnalyticsStatsEntity,
          FutureOr<AnalyticsStatsEntity>
        >
    with
        $FutureModifier<AnalyticsStatsEntity>,
        $FutureProvider<AnalyticsStatsEntity> {
  const AnalyticsStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsStatsHash();

  @$internal
  @override
  $FutureProviderElement<AnalyticsStatsEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AnalyticsStatsEntity> create(Ref ref) {
    return analyticsStats(ref);
  }
}

String _$analyticsStatsHash() => r'560e1862c5cc0f517be8840b87d502f76b242833';

@ProviderFor(recentActivities)
const recentActivitiesProvider = RecentActivitiesProvider._();

final class RecentActivitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserActivityEntity>>,
          List<UserActivityEntity>,
          FutureOr<List<UserActivityEntity>>
        >
    with
        $FutureModifier<List<UserActivityEntity>>,
        $FutureProvider<List<UserActivityEntity>> {
  const RecentActivitiesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recentActivitiesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recentActivitiesHash();

  @$internal
  @override
  $FutureProviderElement<List<UserActivityEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UserActivityEntity>> create(Ref ref) {
    return recentActivities(ref);
  }
}

String _$recentActivitiesHash() => r'c68ef56c0f5cff10229e0321a219d1a09e18e719';

@ProviderFor(activitiesByType)
const activitiesByTypeProvider = ActivitiesByTypeProvider._();

final class ActivitiesByTypeProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<ActivityType, int>>,
          Map<ActivityType, int>,
          FutureOr<Map<ActivityType, int>>
        >
    with
        $FutureModifier<Map<ActivityType, int>>,
        $FutureProvider<Map<ActivityType, int>> {
  const ActivitiesByTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activitiesByTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activitiesByTypeHash();

  @$internal
  @override
  $FutureProviderElement<Map<ActivityType, int>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<ActivityType, int>> create(Ref ref) {
    return activitiesByType(ref);
  }
}

String _$activitiesByTypeHash() => r'299417aabfec35080269c5cf0fc624c46df16764';
