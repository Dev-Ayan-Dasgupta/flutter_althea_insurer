import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/verification_detail_entity.dart';

class VerificationDetailsCard extends StatelessWidget {
  final VerificationDetailEntity details;

  const VerificationDetailsCard({super.key, required this.details});

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
          Row(
            children: [
              Icon(
                Icons.verified_user,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Verification Details',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Verification Status Grid
          Row(
            children: [
              Expanded(
                child: _VerificationStatusBox(
                  label: 'BLE Handshake',
                  verified: details.bleVerified,
                  detail: details.bleDeviceId,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _VerificationStatusBox(
                  label: 'GPS Location',
                  verified: details.gpsVerified,
                  detail: details.gpsAccuracy != null
                      ? '±${details.gpsAccuracy!.toStringAsFixed(1)}m'
                      : null,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _VerificationStatusBox(
                  label: 'Timestamp',
                  verified: details.timestampVerified,
                  detail: null,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // GPS Coordinates
          if (details.gpsLatitude != null && details.gpsLongitude != null) ...[
            _DetailRow(
              icon: Icons.location_on,
              label: 'GPS Coordinates',
              value:
                  '${details.gpsLatitude!.toStringAsFixed(6)}, ${details.gpsLongitude!.toStringAsFixed(6)}',
            ),
            SizedBox(height: 12),
          ],

          // BLE Device ID
          if (details.bleDeviceId != null) ...[
            _DetailRow(
              icon: Icons.bluetooth,
              label: 'BLE Device ID',
              value: details.bleDeviceId!,
            ),
            SizedBox(height: 12),
          ],

          // Time Details
          if (details.actualStartTime != null &&
              details.actualEndTime != null) ...[
            _DetailRow(
              icon: Icons.schedule,
              label: 'Service Time',
              value:
                  '${details.actualStartTime!.toTimeString()} - ${details.actualEndTime!.toTimeString()}',
            ),
            SizedBox(height: 12),
          ],

          // Duration
          if (details.actualDuration != null) ...[
            _DetailRow(
              icon: Icons.timer,
              label: 'Actual Duration',
              value: '${details.actualDuration} minutes',
              isWarning:
                  details.expectedDuration != null &&
                  details.actualDuration! < details.expectedDuration!,
              warningText: details.expectedDuration != null
                  ? 'Expected: ${details.expectedDuration} min'
                  : null,
            ),
            SizedBox(height: 12),
          ],

          // Manual Override Alert
          if (details.manualOverride == true) ...[
            Divider(),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.warning.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.warning.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.edit_note, color: AppColors.warning, size: 20),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manual Override Applied',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.warning,
                          ),
                        ),
                        if (details.overrideReason != null) ...[
                          SizedBox(height: 4),
                          Text(
                            details.overrideReason!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                        if (details.overrideBy != null) ...[
                          SizedBox(height: 4),
                          Text(
                            'By: ${details.overrideBy}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _VerificationStatusBox extends StatelessWidget {
  final String label;
  final bool verified;
  final String? detail;

  const _VerificationStatusBox({
    required this.label,
    required this.verified,
    this.detail,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = verified ? AppColors.success : AppColors.error;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(
            verified ? Icons.check_circle : Icons.cancel,
            color: color,
            size: 28,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          if (detail != null) ...[
            SizedBox(height: 4),
            Text(
              detail!,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isWarning;
  final String? warningText;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.isWarning = false,
    this.warningText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: isWarning
              ? AppColors.warning
              : (isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary),
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
              SizedBox(height: 2),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isWarning ? AppColors.warning : null,
                ),
              ),
              if (warningText != null) ...[
                SizedBox(height: 2),
                Text(
                  warningText!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.warning,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
