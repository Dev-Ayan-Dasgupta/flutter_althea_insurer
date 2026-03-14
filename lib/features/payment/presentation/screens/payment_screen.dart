import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../insuree_management/presentation/providers/insuree_provider.dart';
import '../providers/payment_provider.dart';
import '../widgets/payment_method_card.dart';
import '../widgets/payment_summary_card.dart';
import '../../domain/entities/payment_entity.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extra;

  const PaymentScreen({super.key, required this.extra});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  PaymentMethod _selectedMethod = PaymentMethod.upi;
  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final insureeIds = widget.extra['insureeIds'] as List<String>;
    final calculation = ref.watch(calculatePaymentProvider(insureeIds.length));

    return Scaffold(
      appBar: AppBar(title: Text('Make Payment')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Complete Your Payment',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'You are paying for ${insureeIds.length} ${insureeIds.length == 1 ? 'insuree' : 'insurees'}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.brightness == Brightness.dark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
            SizedBox(height: 32),

            // Payment Summary
            PaymentSummaryCard(
              numberOfInsurees: insureeIds.length,
              amountPerInsuree: calculation['amountPerInsuree']!,
              totalAmount: calculation['totalAmount']!,
              taxAmount: calculation['taxAmount']!,
              taxPercentage: calculation['taxPercentage']!,
              grandTotal: calculation['grandTotal']!,
            ),
            SizedBox(height: 32),

            // Payment Methods
            Text(
              'Select Payment Method',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16),
            for (var method in PaymentMethod.values)
              PaymentMethodCard(
                method: method,
                isSelected: _selectedMethod == method,
                onTap: () {
                  setState(() {
                    _selectedMethod = method;
                  });
                },
              ),
            SizedBox(height: 32),

            // Terms
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.warning.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.warning.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: AppColors.warning, size: 20),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'By proceeding with payment, you agree to our Terms of Service and authorize monthly auto-renewal (if enabled) for the selected insurees.',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.warning,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            // Pay Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isProcessing ? null : _processPayment,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  backgroundColor: AppColors.primarySteelBlue,
                ),
                child: _isProcessing
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                    : Text(
                        'Pay ₹${calculation['grandTotal']!.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
              ),
            ),
            SizedBox(height: 16),

            // Security Info
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 16,
                  color: theme.brightness == Brightness.dark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
                SizedBox(width: 8),
                Text(
                  'Secured by 256-bit SSL encryption',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.brightness == Brightness.dark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _processPayment() async {
    setState(() {
      _isProcessing = true;
    });

    try {
      final insureeIds = widget.extra['insureeIds'] as List<String>;
      final datasource = ref.read(paymentDatasourceProvider);

      // Initiate payment
      final payment = await datasource.initiatePayment(
        insureeIds: insureeIds,
        paymentMethod: _selectedMethod,
      );

      // Process payment
      final result = await datasource.processPayment(payment.id, {
        'insureeIds': insureeIds,
        'numberOfInsurees': insureeIds.length,
        'totalAmount': payment.totalAmount,
        'taxAmount': payment.taxAmount,
        'grandTotal': payment.grandTotal,
        'paymentMethod': payment.paymentMethod,
        'createdAt': payment.createdAt,
      });

      if (mounted) {
        if (result.status == 'completed') {
          // Show success dialog
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: Row(
                children: [
                  Icon(Icons.check_circle, color: AppColors.success),
                  SizedBox(width: 8),
                  Text('Payment Successful'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your payment has been processed successfully.'),
                  SizedBox(height: 16),
                  Text(
                    'Transaction ID: ${result.transactionId}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primarySteelBlue,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Amount: ₹${result.grandTotal.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'An invoice has been generated for this payment.',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.go(RouteNames.insureeManagement);
                  },
                  child: Text('Close'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                    _viewInvoice(context, result.id);
                  },
                  icon: Icon(Icons.receipt_long),
                  label: Text('View Invoice'),
                ),
              ],
            ),
          );

          // Refresh insuree list
          ref.invalidate(insureesProvider);
        } else {
          // Payment failed
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Row(
                children: [
                  Icon(Icons.error_outline, color: AppColors.error),
                  SizedBox(width: 8),
                  Text('Payment Failed'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your payment could not be processed.'),
                  SizedBox(height: 16),
                  Text(
                    'Reason: ${result.failureReason ?? 'Unknown error'}',
                    style: TextStyle(color: AppColors.error),
                  ),
                  SizedBox(height: 16),
                  Text('Please try again or contact support.'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.go(RouteNames.insureeManagement);
                  },
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _isProcessing = false;
                    });
                  },
                  child: Text('Try Again'),
                ),
              ],
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment processing failed. Please try again.'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
        setState(() {
          _isProcessing = false;
        });
      }
    }
  }

  Future<void> _viewInvoice(BuildContext context, String paymentId) async {
    try {
      // Show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()),
      );

      final invoice = await ref.read(generateInvoiceProvider(paymentId).future);

      if (context.mounted) {
        Navigator.pop(context); // Close loading
        context.push(RouteNames.invoice, extra: invoice);
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to generate invoice'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }
}
