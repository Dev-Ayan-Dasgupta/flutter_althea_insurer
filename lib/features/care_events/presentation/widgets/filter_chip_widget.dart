import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const FilterChipWidget({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected
              ? AppColors.primarySteelBlue
              : (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected
                ? AppColors.primarySteelBlue
                : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: selected
                    ? Colors.white
                    : (isDark
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary),
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
            if (selected) ...[
              SizedBox(width: 4),
              Icon(Icons.check, size: 16, color: Colors.white),
            ],
          ],
        ),
      ),
    );
  }
}
