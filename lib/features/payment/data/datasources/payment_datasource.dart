import '../../../../core/utils/logger.dart';
import '../models/invoice_model.dart';
import '../models/payment_model.dart';
import '../../domain/entities/payment_entity.dart';

class PaymentDatasource {
  static const double MONTHLY_FEE = 49.0;
  static const double TAX_PERCENTAGE = 18.0; // GST 18%

  // Initiate payment
  Future<PaymentModel> initiatePayment({
    required List<String> insureeIds,
    required PaymentMethod paymentMethod,
  }) async {
    try {
      Logger.info(
        'Initiating payment for ${insureeIds.length} insurees',
        tag: 'PaymentDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final numberOfInsurees = insureeIds.length;
      final totalAmount = numberOfInsurees * MONTHLY_FEE;
      final taxAmount = (totalAmount * TAX_PERCENTAGE) / 100;
      final grandTotal = totalAmount + taxAmount;

      final payment = PaymentModel(
        id: 'PAY${now.millisecondsSinceEpoch}',
        transactionId: 'TXN${now.millisecondsSinceEpoch}',
        insureeIds: insureeIds,
        numberOfInsurees: numberOfInsurees,
        amountPerInsuree: MONTHLY_FEE,
        totalAmount: totalAmount,
        taxAmount: taxAmount,
        grandTotal: grandTotal,
        paymentMethod: _getPaymentMethodString(paymentMethod),
        status: 'pending',
        createdAt: now,
      );

      Logger.info('Payment initiated: ${payment.id}', tag: 'PaymentDatasource');
      return payment;
    } catch (e) {
      Logger.error(
        'Error initiating payment',
        tag: 'PaymentDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Process payment
  Future<PaymentModel> processPayment(
    String paymentId,
    Map<String, dynamic> paymentDetails,
  ) async {
    try {
      Logger.info('Processing payment: $paymentId', tag: 'PaymentDatasource');

      // Simulate payment processing
      await Future.delayed(Duration(seconds: 2));

      // Simulate 95% success rate
      final isSuccess = DateTime.now().millisecond % 100 < 95;

      final now = DateTime.now();
      final payment = PaymentModel(
        id: paymentId,
        transactionId: 'TXN${now.millisecondsSinceEpoch}',
        insureeIds: paymentDetails['insureeIds'],
        numberOfInsurees: paymentDetails['numberOfInsurees'],
        amountPerInsuree: MONTHLY_FEE,
        totalAmount: paymentDetails['totalAmount'],
        taxAmount: paymentDetails['taxAmount'],
        grandTotal: paymentDetails['grandTotal'],
        paymentMethod: paymentDetails['paymentMethod'],
        status: isSuccess ? 'completed' : 'failed',
        createdAt: paymentDetails['createdAt'],
        completedAt: isSuccess ? now : null,
        failureReason: isSuccess ? null : 'Payment declined by bank',
        receiptUrl: isSuccess
            ? 'https://receipts.altheacare.com/$paymentId.pdf'
            : null,
        paymentDetails: paymentDetails,
      );

      Logger.info(
        'Payment ${isSuccess ? 'completed' : 'failed'}: $paymentId',
        tag: 'PaymentDatasource',
      );
      return payment;
    } catch (e) {
      Logger.error(
        'Error processing payment',
        tag: 'PaymentDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch payment history
  Future<List<PaymentModel>> fetchPaymentHistory() async {
    try {
      Logger.info('Fetching payment history', tag: 'PaymentDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final payments = <PaymentModel>[
        PaymentModel(
          id: 'PAY001',
          transactionId: 'TXN001234567890',
          insureeIds: ['INS001', 'INS002', 'INS003'],
          numberOfInsurees: 3,
          amountPerInsuree: 49.0,
          totalAmount: 147.0,
          taxAmount: 26.46,
          grandTotal: 173.46,
          paymentMethod: 'upi',
          status: 'completed',
          createdAt: now.subtract(Duration(days: 30)),
          completedAt: now.subtract(Duration(days: 30)),
          receiptUrl: 'https://receipts.altheacare.com/PAY001.pdf',
        ),
        PaymentModel(
          id: 'PAY002',
          transactionId: 'TXN001234567891',
          insureeIds: ['INS001'],
          numberOfInsurees: 1,
          amountPerInsuree: 49.0,
          totalAmount: 49.0,
          taxAmount: 8.82,
          grandTotal: 57.82,
          paymentMethod: 'credit_card',
          status: 'completed',
          createdAt: now.subtract(Duration(days: 60)),
          completedAt: now.subtract(Duration(days: 60)),
          receiptUrl: 'https://receipts.altheacare.com/PAY002.pdf',
        ),
        PaymentModel(
          id: 'PAY003',
          transactionId: 'TXN001234567892',
          insureeIds: ['INS002', 'INS003'],
          numberOfInsurees: 2,
          amountPerInsuree: 49.0,
          totalAmount: 98.0,
          taxAmount: 17.64,
          grandTotal: 115.64,
          paymentMethod: 'net_banking',
          status: 'failed',
          createdAt: now.subtract(Duration(days: 15)),
          failureReason: 'Insufficient funds',
        ),
      ];

      Logger.info(
        'Fetched ${payments.length} payment records',
        tag: 'PaymentDatasource',
      );
      return payments;
    } catch (e) {
      Logger.error(
        'Error fetching payment history',
        tag: 'PaymentDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Calculate payment amount
  Map<String, double> calculatePaymentAmount(int numberOfInsurees) {
    final totalAmount = numberOfInsurees * MONTHLY_FEE;
    final taxAmount = (totalAmount * TAX_PERCENTAGE) / 100;
    final grandTotal = totalAmount + taxAmount;

    return {
      'amountPerInsuree': MONTHLY_FEE,
      'totalAmount': totalAmount,
      'taxAmount': taxAmount,
      'taxPercentage': TAX_PERCENTAGE,
      'grandTotal': grandTotal,
    };
  }

  String _getPaymentMethodString(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.creditCard:
        return 'credit_card';
      case PaymentMethod.debitCard:
        return 'debit_card';
      case PaymentMethod.upi:
        return 'upi';
      case PaymentMethod.netBanking:
        return 'net_banking';
      case PaymentMethod.wallet:
        return 'wallet';
    }
  }

  // Generate invoice from payment
  Future<InvoiceModel> generateInvoice(String paymentId) async {
    try {
      Logger.info(
        'Generating invoice for payment: $paymentId',
        tag: 'PaymentDatasource',
      );

      await Future.delayed(Duration(milliseconds: 300));

      // Fetch payment details
      final payments = await fetchPaymentHistory();
      final payment = payments.firstWhere((p) => p.id == paymentId);

      final now = DateTime.now();
      final invoice = InvoiceModel(
        id: 'INV${now.millisecondsSinceEpoch}',
        invoiceNumber: 'INV-${now.year}-${now.millisecondsSinceEpoch % 100000}',
        paymentId: paymentId,
        invoiceDate: payment.createdAt,
        dueDate: payment.createdAt,
        billedTo: 'Star Health Insurance - Insurer Partner',
        billedToAddress: 'Chennai, Tamil Nadu, India',
        items: [
          InvoiceItemModel(
            description:
                'AltheaCare Subscription - ${payment.numberOfInsurees} ${payment.numberOfInsurees == 1 ? 'Insuree' : 'Insurees'} for 1 Month',
            quantity: payment.numberOfInsurees,
            unitPrice: MONTHLY_FEE,
            amount: payment.totalAmount,
          ),
        ],
        subtotal: payment.totalAmount,
        taxAmount: payment.taxAmount,
        taxPercentage: TAX_PERCENTAGE,
        total: payment.grandTotal,
        isPaid: payment.status == 'completed',
        paidOn: payment.completedAt,
      );

      Logger.info(
        'Invoice generated: ${invoice.invoiceNumber}',
        tag: 'PaymentDatasource',
      );
      return invoice;
    } catch (e) {
      Logger.error(
        'Error generating invoice',
        tag: 'PaymentDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
