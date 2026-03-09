// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settingsDatasource)
const settingsDatasourceProvider = SettingsDatasourceProvider._();

final class SettingsDatasourceProvider
    extends
        $FunctionalProvider<
          SettingsDatasource,
          SettingsDatasource,
          SettingsDatasource
        >
    with $Provider<SettingsDatasource> {
  const SettingsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsDatasourceHash();

  @$internal
  @override
  $ProviderElement<SettingsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsDatasource create(Ref ref) {
    return settingsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsDatasource>(value),
    );
  }
}

String _$settingsDatasourceHash() =>
    r'0b580aea020b4e9be916db03db8339a3192db44a';

@ProviderFor(userProfile)
const userProfileProvider = UserProfileProvider._();

final class UserProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserProfileEntity>,
          UserProfileEntity,
          FutureOr<UserProfileEntity>
        >
    with
        $FutureModifier<UserProfileEntity>,
        $FutureProvider<UserProfileEntity> {
  const UserProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfileHash();

  @$internal
  @override
  $FutureProviderElement<UserProfileEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserProfileEntity> create(Ref ref) {
    return userProfile(ref);
  }
}

String _$userProfileHash() => r'597fde94e7b8ab668f98a8a1eb0d99498e87f048';

@ProviderFor(userPreferences)
const userPreferencesProvider = UserPreferencesProvider._();

final class UserPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserPreferencesEntity>,
          UserPreferencesEntity,
          FutureOr<UserPreferencesEntity>
        >
    with
        $FutureModifier<UserPreferencesEntity>,
        $FutureProvider<UserPreferencesEntity> {
  const UserPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<UserPreferencesEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserPreferencesEntity> create(Ref ref) {
    return userPreferences(ref);
  }
}

String _$userPreferencesHash() => r'315beb6bf3dd361b3170392929a510f99035d7c2';

@ProviderFor(notificationSettings)
const notificationSettingsProvider = NotificationSettingsProvider._();

final class NotificationSettingsProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationSettingsEntity>,
          NotificationSettingsEntity,
          FutureOr<NotificationSettingsEntity>
        >
    with
        $FutureModifier<NotificationSettingsEntity>,
        $FutureProvider<NotificationSettingsEntity> {
  const NotificationSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationSettingsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationSettingsHash();

  @$internal
  @override
  $FutureProviderElement<NotificationSettingsEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationSettingsEntity> create(Ref ref) {
    return notificationSettings(ref);
  }
}

String _$notificationSettingsHash() =>
    r'54b50b4949edd490b22bf8be6c48a3250e98e04f';
