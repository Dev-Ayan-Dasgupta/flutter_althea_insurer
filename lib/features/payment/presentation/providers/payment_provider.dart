import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/payment_datasource.dart';
import '../../domain/entities/invoice_entity.dart';
import '../../domain/entities/payment_entity.dart';

part 'payment_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
PaymentDatasource paymentDatasource(Ref ref) {
  return PaymentDatasource();
}

// Payment History Provider
@riverpod
Future<List<PaymentEntity>> paymentHistory(Ref ref) async {
  final datasource = ref.watch(paymentDatasourceProvider);
  final models = await datasource.fetchPaymentHistory();
  return models.map((model) => model.toEntity()).toList();
}

// Calculate Payment Provider
@riverpod
Map<String, double> calculatePayment(Ref ref, int numberOfInsurees) {
  final datasource = ref.watch(paymentDatasourceProvider);
  return datasource.calculatePaymentAmount(numberOfInsurees);
}

// Generate Invoice from Payment
@riverpod
Future<InvoiceEntity> generateInvoice(Ref ref, String paymentId) async {
  final datasource = ref.watch(paymentDatasourceProvider);
  final invoice = await datasource.generateInvoice(paymentId);
  return invoice.toEntity();
}
