// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentDatasource)
const paymentDatasourceProvider = PaymentDatasourceProvider._();

final class PaymentDatasourceProvider
    extends
        $FunctionalProvider<
          PaymentDatasource,
          PaymentDatasource,
          PaymentDatasource
        >
    with $Provider<PaymentDatasource> {
  const PaymentDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentDatasourceHash();

  @$internal
  @override
  $ProviderElement<PaymentDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentDatasource create(Ref ref) {
    return paymentDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentDatasource>(value),
    );
  }
}

String _$paymentDatasourceHash() => r'9ef4d968bf9c13203b872b42d829832c2d7a2913';

@ProviderFor(paymentHistory)
const paymentHistoryProvider = PaymentHistoryProvider._();

final class PaymentHistoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PaymentEntity>>,
          List<PaymentEntity>,
          FutureOr<List<PaymentEntity>>
        >
    with
        $FutureModifier<List<PaymentEntity>>,
        $FutureProvider<List<PaymentEntity>> {
  const PaymentHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentHistoryHash();

  @$internal
  @override
  $FutureProviderElement<List<PaymentEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PaymentEntity>> create(Ref ref) {
    return paymentHistory(ref);
  }
}

String _$paymentHistoryHash() => r'cf1a56dcb1273ad58a18101f069419ca2b7af8fb';

@ProviderFor(calculatePayment)
const calculatePaymentProvider = CalculatePaymentFamily._();

final class CalculatePaymentProvider
    extends
        $FunctionalProvider<
          Map<String, double>,
          Map<String, double>,
          Map<String, double>
        >
    with $Provider<Map<String, double>> {
  const CalculatePaymentProvider._({
    required CalculatePaymentFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'calculatePaymentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$calculatePaymentHash();

  @override
  String toString() {
    return r'calculatePaymentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Map<String, double>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<String, double> create(Ref ref) {
    final argument = this.argument as int;
    return calculatePayment(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, double> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, double>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CalculatePaymentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$calculatePaymentHash() => r'1768ae89f705f472c4a10cbaedf90437d4a4e3c4';

final class CalculatePaymentFamily extends $Family
    with $FunctionalFamilyOverride<Map<String, double>, int> {
  const CalculatePaymentFamily._()
    : super(
        retry: null,
        name: r'calculatePaymentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CalculatePaymentProvider call(int numberOfInsurees) =>
      CalculatePaymentProvider._(argument: numberOfInsurees, from: this);

  @override
  String toString() => r'calculatePaymentProvider';
}

@ProviderFor(generateInvoice)
const generateInvoiceProvider = GenerateInvoiceFamily._();

final class GenerateInvoiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<InvoiceEntity>,
          InvoiceEntity,
          FutureOr<InvoiceEntity>
        >
    with $FutureModifier<InvoiceEntity>, $FutureProvider<InvoiceEntity> {
  const GenerateInvoiceProvider._({
    required GenerateInvoiceFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'generateInvoiceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$generateInvoiceHash();

  @override
  String toString() {
    return r'generateInvoiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<InvoiceEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<InvoiceEntity> create(Ref ref) {
    final argument = this.argument as String;
    return generateInvoice(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateInvoiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$generateInvoiceHash() => r'03ddfc6589136d06b2739cfceaf7f48883248e9c';

final class GenerateInvoiceFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<InvoiceEntity>, String> {
  const GenerateInvoiceFamily._()
    : super(
        retry: null,
        name: r'generateInvoiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GenerateInvoiceProvider call(String paymentId) =>
      GenerateInvoiceProvider._(argument: paymentId, from: this);

  @override
  String toString() => r'generateInvoiceProvider';
}
