import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/faq_entity.dart';

class FAQCard extends StatefulWidget {
  final FAQEntity faq;

  const FAQCard({super.key, required this.faq});

  @override
  State<FAQCard> createState() => _FAQCardState();
}

class _FAQCardState extends State<FAQCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.faq.question,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: [
                            for (var tag in widget.faq.tags.take(3))
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.info.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  tag,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                    color: AppColors.info,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.primarySteelBlue,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded) ...[
            Divider(height: 1),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.faq.answer, style: theme.textTheme.bodyMedium),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Was this helpful?',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 12),
                      IconButton(
                        icon: Icon(Icons.thumb_up_outlined),
                        iconSize: 20,
                        color: AppColors.success,
                        onPressed: () {
                          _showFeedback(context, true);
                        },
                      ),
                      Text(
                        '${widget.faq.helpfulCount}',
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(width: 16),
                      IconButton(
                        icon: Icon(Icons.thumb_down_outlined),
                        iconSize: 20,
                        color: AppColors.error,
                        onPressed: () {
                          _showFeedback(context, false);
                        },
                      ),
                      Text(
                        '${widget.faq.notHelpfulCount}',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Last updated ${widget.faq.updatedAt.toRelativeString()}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isDark
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                      fontSize: 11,
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

  void _showFeedback(BuildContext context, bool isHelpful) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isHelpful
              ? 'Thank you for your feedback!'
              : 'We\'re sorry this wasn\'t helpful. We\'ll work on improving it.',
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
