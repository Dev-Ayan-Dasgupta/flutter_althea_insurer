import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/legal_document_entity.dart';

class LegalSection extends StatelessWidget {
  final LegalSectionEntity section;

  const LegalSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primarySteelBlue,
            ),
          ),
          SizedBox(height: 12),
          Text(
            section.content,
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.6),
          ),
          if (section.bulletPoints != null &&
              section.bulletPoints!.isNotEmpty) ...[
            SizedBox(height: 12),
            ...section.bulletPoints!.map(
              (point) => Padding(
                padding: EdgeInsets.only(left: 16, bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8, right: 12),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.primarySteelBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        point,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
