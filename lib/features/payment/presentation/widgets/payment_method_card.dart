import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/payment_entity.dart';

class PaymentMethodCard extends StatelessWidget {
  final PaymentMethod method;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodCard({
    super.key,
    required this.method,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primarySteelBlue.withValues(alpha: 0.1)
            : (isDark ? AppColors.darkSurface : AppColors.lightSurface),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected
              ? AppColors.primarySteelBlue
              : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _getMethodColor().withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getMethodIcon(),
                    color: _getMethodColor(),
                    size: 24,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getMethodLabel(),
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        _getMethodDescription(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Icon(Icons.check_circle, color: AppColors.primarySteelBlue)
                else
                  Icon(
                    Icons.radio_button_unchecked,
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getMethodIcon() {
    switch (method) {
      case PaymentMethod.creditCard:
        return Icons.credit_card;
      case PaymentMethod.debitCard:
        return Icons.credit_card;
      case PaymentMethod.upi:
        return Icons.qr_code;
      case PaymentMethod.netBanking:
        return Icons.account_balance;
      case PaymentMethod.wallet:
        return Icons.account_balance_wallet;
    }
  }

  String _getMethodLabel() {
    switch (method) {
      case PaymentMethod.creditCard:
        return 'Credit Card';
      case PaymentMethod.debitCard:
        return 'Debit Card';
      case PaymentMethod.upi:
        return 'UPI';
      case PaymentMethod.netBanking:
        return 'Net Banking';
      case PaymentMethod.wallet:
        return 'Wallet';
    }
  }

  String _getMethodDescription() {
    switch (method) {
      case PaymentMethod.creditCard:
        return 'Visa, Mastercard, Amex';
      case PaymentMethod.debitCard:
        return 'All major banks';
      case PaymentMethod.upi:
        return 'GPay, PhonePe, Paytm';
      case PaymentMethod.netBanking:
        return 'All Indian banks';
      case PaymentMethod.wallet:
        return 'Paytm, PhonePe, Amazon Pay';
    }
  }

  Color _getMethodColor() {
    switch (method) {
      case PaymentMethod.creditCard:
      case PaymentMethod.debitCard:
        return AppColors.primarySteelBlue;
      case PaymentMethod.upi:
        return AppColors.success;
      case PaymentMethod.netBanking:
        return AppColors.info;
      case PaymentMethod.wallet:
        return AppColors.warning;
    }
  }
}
