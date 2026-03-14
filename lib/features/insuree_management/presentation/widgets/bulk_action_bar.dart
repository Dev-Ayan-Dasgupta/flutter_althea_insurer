import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class BulkActionBar extends StatelessWidget {
  final int selectedCount;
  final VoidCallback onRenewAll;
  final VoidCallback onRemoveAll;
  final VoidCallback onClearSelection;

  const BulkActionBar({
    super.key,
    required this.selectedCount,
    required this.onRenewAll,
    required this.onRemoveAll,
    required this.onClearSelection,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.primarySteelBlue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: onClearSelection,
            ),
            SizedBox(width: 8),
            Text(
              '$selectedCount selected',
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            TextButton.icon(
              onPressed: onRenewAll,
              icon: Icon(Icons.refresh, color: Colors.white, size: 18),
              label: Text('Renew', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white.withValues(alpha: 0.2),
              ),
            ),
            SizedBox(width: 8),
            TextButton.icon(
              onPressed: onRemoveAll,
              icon: Icon(Icons.delete, color: Colors.white, size: 18),
              label: Text('Remove', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.error.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
