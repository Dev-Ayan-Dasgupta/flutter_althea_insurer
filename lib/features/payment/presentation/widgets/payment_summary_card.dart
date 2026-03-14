import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class PaymentSummaryCard extends StatelessWidget {
  final int numberOfInsurees;
  final double amountPerInsuree;
  final double totalAmount;
  final double taxAmount;
  final double taxPercentage;
  final double grandTotal;

  const PaymentSummaryCard({
    super.key,
    required this.numberOfInsurees,
    required this.amountPerInsuree,
    required this.totalAmount,
    required this.taxAmount,
    required this.taxPercentage,
    required this.grandTotal,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          _buildRow(context, 'Number of Insurees', numberOfInsurees.toString()),
          SizedBox(height: 12),
          _buildRow(
            context,
            'Amount per Insuree',
            '₹${amountPerInsuree.toStringAsFixed(2)}',
          ),
          SizedBox(height: 12),
          _buildRow(context, 'Subtotal', '₹${totalAmount.toStringAsFixed(2)}'),
          SizedBox(height: 12),
          _buildRow(
            context,
            'GST (${taxPercentage.toStringAsFixed(0)}%)',
            '₹${taxAmount.toStringAsFixed(2)}',
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '₹${grandTotal.toStringAsFixed(2)}',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primarySteelBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context, String label, String value) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: isDark
                ? AppColors.darkTextSecondary
                : AppColors.lightTextSecondary,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
