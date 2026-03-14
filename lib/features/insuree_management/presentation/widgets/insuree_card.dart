import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/insuree_entity.dart';
import 'subscription_status_badge.dart';

class InsureeCard extends StatelessWidget {
  final InsureeEntity insuree;
  final bool isSelected;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onRenew;

  const InsureeCard({
    super.key,
    required this.insuree,
    this.isSelected = false,
    this.onTap,
    this.onLongPress,
    this.onRenew,
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
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Avatar
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primarySteelBlue,
                            AppColors.primarySteelBlue.withValues(alpha: 0.7),
                          ],
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          _getInitials(insuree.fullName),
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    // Info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  insuree.fullName,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              if (isSelected)
                                Icon(
                                  Icons.check_circle,
                                  color: AppColors.primarySteelBlue,
                                  size: 20,
                                ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            insuree.policyNumber,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    // Status Badge
                    SubscriptionStatusBadge(status: insuree.status),
                  ],
                ),
                SizedBox(height: 12),
                Divider(height: 1),
                SizedBox(height: 12),
                // Details
                Row(
                  children: [
                    Expanded(
                      child: _buildDetailItem(
                        context,
                        Icons.cake,
                        '${insuree.age} years',
                      ),
                    ),
                    Expanded(
                      child: _buildDetailItem(
                        context,
                        Icons.phone,
                        insuree.phoneNumber ?? 'N/A',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: _buildDetailItem(
                        context,
                        Icons.calendar_today,
                        'Added ${insuree.addedOn.toRelativeString()}',
                      ),
                    ),
                    Expanded(
                      child: _buildDetailItem(
                        context,
                        Icons.payments,
                        '₹${insuree.monthlyFee.toStringAsFixed(0)}/month',
                      ),
                    ),
                  ],
                ),
                // Expiry Warning
                if (insuree.daysUntilExpiry != null &&
                    insuree.daysUntilExpiry! <= 7 &&
                    insuree.daysUntilExpiry! > 0) ...[
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.warning.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: AppColors.warning,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Expires in ${insuree.daysUntilExpiry} ${insuree.daysUntilExpiry == 1 ? 'day' : 'days'}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.warning,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (onRenew != null)
                          TextButton(
                            onPressed: onRenew,
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              minimumSize: Size(0, 32),
                            ),
                            child: Text('Renew'),
                          ),
                      ],
                    ),
                  ),
                ],
                // Expired
                if (insuree.daysUntilExpiry != null &&
                    insuree.daysUntilExpiry! < 0) ...[
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: AppColors.error,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Expired ${insuree.daysUntilExpiry!.abs()} ${insuree.daysUntilExpiry!.abs() == 1 ? 'day' : 'days'} ago',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.error,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (onRenew != null)
                          ElevatedButton(
                            onPressed: onRenew,
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              minimumSize: Size(0, 32),
                              backgroundColor: AppColors.error,
                            ),
                            child: Text('Renew Now'),
                          ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(BuildContext context, IconData icon, String text) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: isDark
              ? AppColors.darkTextSecondary
              : AppColors.lightTextSecondary,
        ),
        SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty) {
      return parts[0][0].toUpperCase();
    }
    return '?';
  }
}
