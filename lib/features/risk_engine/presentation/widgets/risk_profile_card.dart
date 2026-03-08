import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/risk_profile_entity.dart';
import 'risk_score_gauge.dart';

class RiskProfileCard extends StatefulWidget {
  final RiskProfileEntity profile;

  const RiskProfileCard({super.key, required this.profile});

  @override
  State<RiskProfileCard> createState() => _RiskProfileCardState();
}

class _RiskProfileCardState extends State<RiskProfileCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -2.0 : 0.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _getRiskColor().withValues(alpha: 0.3),
              width: 2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: _getRiskColor().withValues(alpha: 0.2),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.push('/risk-engine/${widget.profile.id}');
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    // Risk Score Gauge
                    RiskScoreGauge(
                      riskScore: widget.profile.riskScore,
                      size: 100,
                    ),
                    SizedBox(width: 20),

                    // Patient Info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name & Age
                          Text(
                            widget.profile.patientName,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${widget.profile.patientAge} years • ${widget.profile.gender} • ${widget.profile.patientId}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDark
                                  ? AppColors.darkTextSecondary
                                  : AppColors.lightTextSecondary,
                            ),
                          ),
                          SizedBox(height: 12),

                          // Primary Condition
                          if (widget.profile.primaryCondition != null)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.info.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                widget.profile.primaryCondition!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: AppColors.info,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          SizedBox(height: 12),

                          // Stats Row
                          Row(
                            children: [
                              _StatItem(
                                icon: Icons.local_hospital,
                                label: 'Hosp. Risk',
                                value:
                                    '${(widget.profile.hospitalizationProbability * 100).toStringAsFixed(0)}%',
                              ),
                              SizedBox(width: 20),
                              _StatItem(
                                icon: Icons.emergency,
                                label: 'ER Risk',
                                value:
                                    '${(widget.profile.emergencyVisitProbability * 100).toStringAsFixed(0)}%',
                              ),
                              SizedBox(width: 20),
                              _StatItem(
                                icon: Icons.lightbulb_outline,
                                label: 'Interventions',
                                value: widget
                                    .profile
                                    .recommendedInterventions
                                    .length
                                    .toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Right side - Cost info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Est. Annual Cost',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        Text(
                          widget.profile.estimatedAnnualCost
                              .toCompactCurrency(),
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.error,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Potential Savings',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                        ),
                        Text(
                          widget.profile.potentialSavings.toCompactCurrency(),
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.success,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getRiskColor() {
    switch (widget.profile.riskLevel) {
      case RiskLevel.critical:
        return AppColors.riskCritical;
      case RiskLevel.high:
        return AppColors.riskHigh;
      case RiskLevel.moderate:
        return AppColors.riskModerate;
      case RiskLevel.low:
        return AppColors.riskLow;
    }
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: isDark
              ? AppColors.darkTextTertiary
              : AppColors.lightTextTertiary,
        ),
        SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary,
              ),
            ),
            Text(
              value,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
