import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/fraud_alert_entity.dart';

class FraudAlertCard extends StatelessWidget {
  final FraudAlertEntity alert;
  final VoidCallback? onTap;

  const FraudAlertCard({super.key, required this.alert, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final severityColor = _getSeverityColor();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: severityColor.withValues(alpha: 0.3),
          width: alert.severity == FraudAlertSeverity.critical ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: severityColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _getFraudTypeIcon(),
                        color: severityColor,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _getFraudTypeLabel(),
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              if (alert.severity == FraudAlertSeverity.critical)
                                Icon(
                                  Icons.priority_high,
                                  color: AppColors.emergencyRed,
                                  size: 20,
                                ),
                            ],
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Claim ${alert.claimId} • ${alert.patientName}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: severityColor.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            _getSeverityLabel(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: severityColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${(alert.fraudProbability * 100).toStringAsFixed(0)}% fraud risk',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: severityColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),

                // Detection Reason
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: severityColor.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.warning, size: 16, color: severityColor),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          alert.detectionReason,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                // Anomalies
                if (alert.anomalies.isNotEmpty) ...[
                  Text(
                    'Anomalies Detected:',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  for (var anomaly in alert.anomalies.take(3))
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle, size: 6, color: severityColor),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              anomaly,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 12),
                ],

                // Bottom Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 16,
                          color: AppColors.error,
                        ),
                        SizedBox(width: 4),
                        Text(
                          alert.claimAmount.toCompactCurrency(),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.error,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: _getStatusColor().withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        _getStatusLabel(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: _getStatusColor(),
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      alert.providerName,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                    Text(
                      alert.detectedAt.toRelativeString(),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getSeverityColor() {
    switch (alert.severity) {
      case FraudAlertSeverity.critical:
        return AppColors.emergencyRed;
      case FraudAlertSeverity.high:
        return AppColors.error;
      case FraudAlertSeverity.medium:
        return AppColors.warning;
      case FraudAlertSeverity.low:
        return AppColors.info;
    }
  }

  String _getSeverityLabel() {
    switch (alert.severity) {
      case FraudAlertSeverity.critical:
        return 'CRITICAL';
      case FraudAlertSeverity.high:
        return 'HIGH';
      case FraudAlertSeverity.medium:
        return 'MEDIUM';
      case FraudAlertSeverity.low:
        return 'LOW';
    }
  }

  Color _getStatusColor() {
    switch (alert.status) {
      case AlertStatus.pending:
        return AppColors.warning;
      case AlertStatus.investigating:
        return AppColors.info;
      case AlertStatus.confirmed:
        return AppColors.error;
      case AlertStatus.dismissed:
        return AppColors.success;
    }
  }

  String _getStatusLabel() {
    switch (alert.status) {
      case AlertStatus.pending:
        return 'PENDING';
      case AlertStatus.investigating:
        return 'INVESTIGATING';
      case AlertStatus.confirmed:
        return 'CONFIRMED';
      case AlertStatus.dismissed:
        return 'DISMISSED';
    }
  }

  IconData _getFraudTypeIcon() {
    switch (alert.fraudType) {
      case FraudType.duplicateClaim:
        return Icons.content_copy;
      case FraudType.inflatedBilling:
        return Icons.trending_up;
      case FraudType.serviceMismatch:
        return Icons.content_paste_off;
      case FraudType.identityFraud:
        return Icons.person_off;
      case FraudType.providerCollusion:
        return Icons.handshake;
      case FraudType.unnecessaryServices:
        return Icons.medical_services;
      case FraudType.billingManipulation:
        return Icons.edit;
      case FraudType.locationAnomaly:
        return Icons.location_off;
    }
  }

  String _getFraudTypeLabel() {
    switch (alert.fraudType) {
      case FraudType.duplicateClaim:
        return 'Duplicate Claim';
      case FraudType.inflatedBilling:
        return 'Inflated Billing';
      case FraudType.serviceMismatch:
        return 'Service Mismatch';
      case FraudType.identityFraud:
        return 'Identity Fraud';
      case FraudType.providerCollusion:
        return 'Provider Collusion';
      case FraudType.unnecessaryServices:
        return 'Unnecessary Services';
      case FraudType.billingManipulation:
        return 'Billing Manipulation';
      case FraudType.locationAnomaly:
        return 'Location Anomaly';
    }
  }
}
