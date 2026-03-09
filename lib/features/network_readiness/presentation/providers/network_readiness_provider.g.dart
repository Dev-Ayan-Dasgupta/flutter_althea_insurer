// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_readiness_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(networkReadinessDatasource)
const networkReadinessDatasourceProvider =
    NetworkReadinessDatasourceProvider._();

final class NetworkReadinessDatasourceProvider
    extends
        $FunctionalProvider<
          NetworkReadinessDatasource,
          NetworkReadinessDatasource,
          NetworkReadinessDatasource
        >
    with $Provider<NetworkReadinessDatasource> {
  const NetworkReadinessDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkReadinessDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkReadinessDatasourceHash();

  @$internal
  @override
  $ProviderElement<NetworkReadinessDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NetworkReadinessDatasource create(Ref ref) {
    return networkReadinessDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkReadinessDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkReadinessDatasource>(value),
    );
  }
}

String _$networkReadinessDatasourceHash() =>
    r'365a6a3d5e2e58ba6b4f3671cb9c7ec335896aeb';

@ProviderFor(networkAssets)
const networkAssetsProvider = NetworkAssetsProvider._();

final class NetworkAssetsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<NetworkAssetEntity>>,
          List<NetworkAssetEntity>,
          FutureOr<List<NetworkAssetEntity>>
        >
    with
        $FutureModifier<List<NetworkAssetEntity>>,
        $FutureProvider<List<NetworkAssetEntity>> {
  const NetworkAssetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkAssetsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkAssetsHash();

  @$internal
  @override
  $FutureProviderElement<List<NetworkAssetEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<NetworkAssetEntity>> create(Ref ref) {
    return networkAssets(ref);
  }
}

String _$networkAssetsHash() => r'08015c49508fbd037aa1164831cfc1142057b771';

@ProviderFor(serviceCapacity)
const serviceCapacityProvider = ServiceCapacityProvider._();

final class ServiceCapacityProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ServiceCapacityEntity>>,
          List<ServiceCapacityEntity>,
          FutureOr<List<ServiceCapacityEntity>>
        >
    with
        $FutureModifier<List<ServiceCapacityEntity>>,
        $FutureProvider<List<ServiceCapacityEntity>> {
  const ServiceCapacityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'serviceCapacityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$serviceCapacityHash();

  @$internal
  @override
  $FutureProviderElement<List<ServiceCapacityEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ServiceCapacityEntity>> create(Ref ref) {
    return serviceCapacity(ref);
  }
}

String _$serviceCapacityHash() => r'63b269a422297665c33b0c16d513f6e8ad1e6412';

@ProviderFor(resourceUtilization)
const resourceUtilizationProvider = ResourceUtilizationProvider._();

final class ResourceUtilizationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceUtilizationEntity>>,
          List<ResourceUtilizationEntity>,
          FutureOr<List<ResourceUtilizationEntity>>
        >
    with
        $FutureModifier<List<ResourceUtilizationEntity>>,
        $FutureProvider<List<ResourceUtilizationEntity>> {
  const ResourceUtilizationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourceUtilizationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resourceUtilizationHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceUtilizationEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceUtilizationEntity>> create(Ref ref) {
    return resourceUtilization(ref);
  }
}

String _$resourceUtilizationHash() =>
    r'f41cd2e3fe5d8f449d3faabf483dfa77a7c112d9';

@ProviderFor(coverageZones)
const coverageZonesProvider = CoverageZonesProvider._();

final class CoverageZonesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CoverageZoneEntity>>,
          List<CoverageZoneEntity>,
          FutureOr<List<CoverageZoneEntity>>
        >
    with
        $FutureModifier<List<CoverageZoneEntity>>,
        $FutureProvider<List<CoverageZoneEntity>> {
  const CoverageZonesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coverageZonesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coverageZonesHash();

  @$internal
  @override
  $FutureProviderElement<List<CoverageZoneEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CoverageZoneEntity>> create(Ref ref) {
    return coverageZones(ref);
  }
}

String _$coverageZonesHash() => r'6634bc44a2f3f1bfb5899a35b44e30052e57e9fe';

@ProviderFor(networkStatistics)
const networkStatisticsProvider = NetworkStatisticsProvider._();

final class NetworkStatisticsProvider
    extends
        $FunctionalProvider<
          AsyncValue<NetworkStatistics>,
          NetworkStatistics,
          FutureOr<NetworkStatistics>
        >
    with
        $FutureModifier<NetworkStatistics>,
        $FutureProvider<NetworkStatistics> {
  const NetworkStatisticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkStatisticsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkStatisticsHash();

  @$internal
  @override
  $FutureProviderElement<NetworkStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NetworkStatistics> create(Ref ref) {
    return networkStatistics(ref);
  }
}

String _$networkStatisticsHash() => r'5e40b64760539f8e3ecbd8d2943083972fa7bfb9';
