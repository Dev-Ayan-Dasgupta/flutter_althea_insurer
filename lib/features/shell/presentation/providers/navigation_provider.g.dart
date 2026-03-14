// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NavigationIndex)
const navigationIndexProvider = NavigationIndexProvider._();

final class NavigationIndexProvider
    extends $NotifierProvider<NavigationIndex, int> {
  const NavigationIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigationIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigationIndexHash();

  @$internal
  @override
  NavigationIndex create() => NavigationIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$navigationIndexHash() => r'd414893e1ca6a80fb2253812d81d3fbffa99ea74';

abstract class _$NavigationIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(navigationItems)
const navigationItemsProvider = NavigationItemsProvider._();

final class NavigationItemsProvider
    extends
        $FunctionalProvider<
          List<NavigationItem>,
          List<NavigationItem>,
          List<NavigationItem>
        >
    with $Provider<List<NavigationItem>> {
  const NavigationItemsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigationItemsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigationItemsHash();

  @$internal
  @override
  $ProviderElement<List<NavigationItem>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<NavigationItem> create(Ref ref) {
    return navigationItems(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<NavigationItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<NavigationItem>>(value),
    );
  }
}

String _$navigationItemsHash() => r'ca19dd72c27de0caaa08c3953af4081faf063511';

@ProviderFor(isDrawerOpen)
const isDrawerOpenProvider = IsDrawerOpenProvider._();

final class IsDrawerOpenProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsDrawerOpenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isDrawerOpenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isDrawerOpenHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isDrawerOpen(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isDrawerOpenHash() => r'1d721e4091801bb74c0c570fcf3375f7da8524a9';

@ProviderFor(DrawerState)
const drawerStateProvider = DrawerStateProvider._();

final class DrawerStateProvider extends $NotifierProvider<DrawerState, bool> {
  const DrawerStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'drawerStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$drawerStateHash();

  @$internal
  @override
  DrawerState create() => DrawerState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$drawerStateHash() => r'ee9b279eaff18cab01add8f7b1849b9c429d2757';

abstract class _$DrawerState extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
