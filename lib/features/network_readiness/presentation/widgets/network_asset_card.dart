import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/network_asset_entity.dart';

class NetworkAssetCard extends StatelessWidget {
  final NetworkAssetEntity asset;

  const NetworkAssetCard({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final statusColor = _getStatusColor();

    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          // Icon
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _getTypeColor().withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(_getTypeIcon(), color: _getTypeColor(), size: 20),
          ),
          SizedBox(width: 12),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      asset.name,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: statusColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        _getStatusLabel(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: statusColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                if (asset.currentLocation != null) ...[
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 12,
                        color: isDark
                            ? AppColors.darkTextTertiary
                            : AppColors.lightTextTertiary,
                      ),
                      SizedBox(width: 4),
                      Text(
                        asset.currentLocation!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),

          // Metrics
          if (asset.completedToday != null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.success.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Text(
                    asset.completedToday.toString(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.success,
                    ),
                  ),
                  Text(
                    'today',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 9,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    switch (asset.status) {
      case AssetStatus.active:
        return AppColors.success;
      case AssetStatus.busy:
        return AppColors.warning;
      case AssetStatus.offline:
        return AppColors.secondarySteelGrey;
      case AssetStatus.maintenance:
        return AppColors.error;
    }
  }

  String _getStatusLabel() {
    switch (asset.status) {
      case AssetStatus.active:
        return 'ACTIVE';
      case AssetStatus.busy:
        return 'BUSY';
      case AssetStatus.offline:
        return 'OFFLINE';
      case AssetStatus.maintenance:
        return 'MAINT';
    }
  }

  Color _getTypeColor() {
    switch (asset.type) {
      case AssetType.ambulance:
        return AppColors.emergencyRed;
      case AssetType.nurse:
        return AppColors.primarySteelBlue;
      case AssetType.caregiver:
        return AppColors.info;
      case AssetType.pharmacy:
        return AppColors.success;
      case AssetType.diagnosticLab:
        return AppColors.warning;
    }
  }

  IconData _getTypeIcon() {
    switch (asset.type) {
      case AssetType.ambulance:
        return Icons.local_shipping;
      case AssetType.nurse:
        return Icons.medical_services;
      case AssetType.caregiver:
        return Icons.person;
      case AssetType.pharmacy:
        return Icons.local_pharmacy;
      case AssetType.diagnosticLab:
        return Icons.science;
    }
  }
}
