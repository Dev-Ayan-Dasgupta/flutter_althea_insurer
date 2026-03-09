// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(notificationsDatasource)
const notificationsDatasourceProvider = NotificationsDatasourceProvider._();

final class NotificationsDatasourceProvider
    extends
        $FunctionalProvider<
          NotificationsDatasource,
          NotificationsDatasource,
          NotificationsDatasource
        >
    with $Provider<NotificationsDatasource> {
  const NotificationsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsDatasourceHash();

  @$internal
  @override
  $ProviderElement<NotificationsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationsDatasource create(Ref ref) {
    return notificationsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationsDatasource>(value),
    );
  }
}

String _$notificationsDatasourceHash() =>
    r'aea627c3bb3da378efdfc48b3e9e6e35a311ac67';

@ProviderFor(notificationPreferences)
const notificationPreferencesProvider = NotificationPreferencesProvider._();

final class NotificationPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationPreferenceEntity>,
          NotificationPreferenceEntity,
          FutureOr<NotificationPreferenceEntity>
        >
    with
        $FutureModifier<NotificationPreferenceEntity>,
        $FutureProvider<NotificationPreferenceEntity> {
  const NotificationPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<NotificationPreferenceEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationPreferenceEntity> create(Ref ref) {
    return notificationPreferences(ref);
  }
}

String _$notificationPreferencesHash() =>
    r'b3ac04a5331e1e4a744cb33a7d1870248ad64d01';

@ProviderFor(notifications)
const notificationsProvider = NotificationsProvider._();

final class NotificationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<NotificationEntity>>,
          List<NotificationEntity>,
          FutureOr<List<NotificationEntity>>
        >
    with
        $FutureModifier<List<NotificationEntity>>,
        $FutureProvider<List<NotificationEntity>> {
  const NotificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsHash();

  @$internal
  @override
  $FutureProviderElement<List<NotificationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<NotificationEntity>> create(Ref ref) {
    return notifications(ref);
  }
}

String _$notificationsHash() => r'284c27402b8d7941c60c3dd6c05e90b3c09023d2';

@ProviderFor(unreadNotificationsCount)
const unreadNotificationsCountProvider = UnreadNotificationsCountProvider._();

final class UnreadNotificationsCountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  const UnreadNotificationsCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'unreadNotificationsCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$unreadNotificationsCountHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return unreadNotificationsCount(ref);
  }
}

String _$unreadNotificationsCountHash() =>
    r'9d5c411cab153d03d9f82b8802312bfe38dbc7eb';

@ProviderFor(filteredNotifications)
const filteredNotificationsProvider = FilteredNotificationsFamily._();

final class FilteredNotificationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<NotificationEntity>>,
          List<NotificationEntity>,
          FutureOr<List<NotificationEntity>>
        >
    with
        $FutureModifier<List<NotificationEntity>>,
        $FutureProvider<List<NotificationEntity>> {
  const FilteredNotificationsProvider._({
    required FilteredNotificationsFamily super.from,
    required NotificationStatus? super.argument,
  }) : super(
         retry: null,
         name: r'filteredNotificationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$filteredNotificationsHash();

  @override
  String toString() {
    return r'filteredNotificationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<NotificationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<NotificationEntity>> create(Ref ref) {
    final argument = this.argument as NotificationStatus?;
    return filteredNotifications(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredNotificationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filteredNotificationsHash() =>
    r'4b27e0d3e2e553a9e36c569e7cbb1ae768225e0f';

final class FilteredNotificationsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<NotificationEntity>>,
          NotificationStatus?
        > {
  const FilteredNotificationsFamily._()
    : super(
        retry: null,
        name: r'filteredNotificationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FilteredNotificationsProvider call(NotificationStatus? status) =>
      FilteredNotificationsProvider._(argument: status, from: this);

  @override
  String toString() => r'filteredNotificationsProvider';
}
