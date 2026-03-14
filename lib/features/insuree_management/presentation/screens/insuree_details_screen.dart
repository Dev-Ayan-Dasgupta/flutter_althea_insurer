import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/extensions.dart';
import '../providers/insuree_provider.dart';
import '../widgets/subscription_status_badge.dart';
import '../../domain/entities/insuree_entity.dart';

class InsureeDetailsScreen extends ConsumerWidget {
  final InsureeEntity insuree;

  const InsureeDetailsScreen({super.key, required this.insuree});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Insuree Details'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'edit') {
                _showEditDialog(context);
              } else if (value == 'remove') {
                _showRemoveDialog(context, ref);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 20),
                    SizedBox(width: 8),
                    Text('Edit Details'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'remove',
                child: Row(
                  children: [
                    Icon(Icons.delete, size: 20, color: AppColors.error),
                    SizedBox(width: 8),
                    Text(
                      'Remove Insuree',
                      style: TextStyle(color: AppColors.error),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primarySteelBlue,
                    AppColors.primarySteelBlue.withValues(alpha: 0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Avatar
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        _getInitials(insuree.fullName),
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: AppColors.primarySteelBlue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    insuree.fullName,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    insuree.policyNumber,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                  SizedBox(height: 12),
                  SubscriptionStatusBadge(status: insuree.status),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Subscription Info
            _buildSection(context, 'Subscription Information', [
              _buildInfoRow(
                context,
                'Monthly Fee',
                '₹${insuree.monthlyFee.toStringAsFixed(2)}',
                Icons.payments,
              ),
              _buildInfoRow(
                context,
                'Auto-Renewal',
                insuree.isAutoRenew ? 'Enabled' : 'Disabled',
                Icons.autorenew,
              ),
              _buildInfoRow(
                context,
                'Added On',
                insuree.addedOn.toFormattedString(),
                Icons.calendar_today,
              ),
              _buildInfoRow(
                context,
                'Subscription Start',
                insuree.subscriptionStartDate.toFormattedString(),
                Icons.play_circle,
              ),
              _buildInfoRow(
                context,
                'Subscription End',
                insuree.subscriptionEndDate.toFormattedString(),
                Icons.stop_circle,
              ),
              if (insuree.lastPaymentDate != null)
                _buildInfoRow(
                  context,
                  'Last Payment',
                  insuree.lastPaymentDate!.toFormattedString(),
                  Icons.receipt,
                ),
              if (insuree.nextPaymentDue != null)
                _buildInfoRow(
                  context,
                  'Next Payment Due',
                  insuree.nextPaymentDue!.toFormattedString(),
                  Icons.schedule,
                ),
              if (insuree.daysUntilExpiry != null)
                _buildInfoRow(
                  context,
                  'Days Until Expiry',
                  insuree.daysUntilExpiry! > 0
                      ? '${insuree.daysUntilExpiry} days'
                      : 'Expired ${insuree.daysUntilExpiry!.abs()} days ago',
                  Icons.timer,
                  valueColor: insuree.daysUntilExpiry! <= 7
                      ? AppColors.error
                      : null,
                ),
            ]),
            SizedBox(height: 24),

            // Personal Information
            _buildSection(context, 'Personal Information', [
              _buildInfoRow(context, 'Email', insuree.email, Icons.email),
              if (insuree.phoneNumber != null)
                _buildInfoRow(
                  context,
                  'Phone',
                  insuree.phoneNumber!,
                  Icons.phone,
                ),
              _buildInfoRow(
                context,
                'Date of Birth',
                insuree.dateOfBirth.toFormattedString(),
                Icons.cake,
              ),
              _buildInfoRow(
                context,
                'Age',
                '${insuree.age} years',
                Icons.person,
              ),
              _buildInfoRow(context, 'Gender', insuree.gender, Icons.wc),
              _buildInfoRow(
                context,
                'Address',
                insuree.address,
                Icons.location_on,
                isMultiline: true,
              ),
            ]),
            SizedBox(height: 24),

            // Medical Information
            if (insuree.medicalHistory != null) ...[
              _buildSection(context, 'Medical History', [
                _buildInfoRow(
                  context,
                  'Conditions',
                  insuree.medicalHistory!,
                  Icons.medical_services,
                  isMultiline: true,
                ),
              ]),
              SizedBox(height: 24),
            ],

            // Notes
            if (insuree.notes != null) ...[
              _buildSection(context, 'Notes', [
                _buildInfoRow(
                  context,
                  'Additional Information',
                  insuree.notes!,
                  Icons.note,
                  isMultiline: true,
                ),
              ]),
              SizedBox(height: 24),
            ],

            // Action Buttons
            if (insuree.status == InsureeStatus.expiringSoon ||
                insuree.status == InsureeStatus.expired ||
                insuree.status == InsureeStatus.pendingPayment)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.push(
                      RouteNames.payment,
                      extra: {
                        'insureeIds': [insuree.id],
                      },
                    );
                  },
                  icon: Icon(Icons.payment),
                  label: Text('Renew Subscription'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: AppColors.primarySteelBlue,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    List<Widget> children,
  ) {
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
            title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context,
    String label,
    String value,
    IconData icon, {
    bool isMultiline = false,
    Color? valueColor,
  }) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: isMultiline
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: AppColors.primarySteelBlue),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: valueColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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

  void _showEditDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Edit functionality coming soon'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _showRemoveDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Remove Insuree'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Are you sure you want to remove ${insuree.fullName}?'),
            SizedBox(height: 16),
            Text(
              'Select reason:',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            _RemovalReasonOption(
              reason: 'Policy Discontinued',
              onSelected: () {
                Navigator.pop(dialogContext);
                _performRemoval(context, ref, 'Policy Discontinued');
              },
            ),
            _RemovalReasonOption(
              reason: 'Insuree Deceased',
              onSelected: () {
                Navigator.pop(dialogContext);
                _performRemoval(context, ref, 'Insuree Deceased');
              },
            ),
            _RemovalReasonOption(
              reason: 'No Longer Needed',
              onSelected: () {
                Navigator.pop(dialogContext);
                _performRemoval(context, ref, 'No Longer Needed');
              },
            ),
            _RemovalReasonOption(
              reason: 'Other',
              onSelected: () {
                Navigator.pop(dialogContext);
                _performRemoval(context, ref, 'Other');
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Future<void> _performRemoval(
    BuildContext context,
    WidgetRef ref,
    String reason,
  ) async {
    try {
      final datasource = ref.read(insureeDatasourceProvider);
      await datasource.removeInsuree(insuree.id, reason);

      ref.invalidate(insureesProvider);

      if (context.mounted) {
        context.go(RouteNames.insureeManagement);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Insuree removed successfully'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to remove insuree'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }
}

class _RemovalReasonOption extends StatelessWidget {
  final String reason;
  final VoidCallback onSelected;

  const _RemovalReasonOption({required this.reason, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(reason),
      onTap: onSelected,
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }
}
