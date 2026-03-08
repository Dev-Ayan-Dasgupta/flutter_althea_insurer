import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/risk_profile_entity.dart';
import '../providers/risk_engine_provider.dart';
import '../widgets/risk_score_gauge.dart';
import '../widgets/risk_factor_card.dart';
import '../widgets/intervention_card.dart';

class PatientRiskDetailsScreen extends ConsumerWidget {
  final String profileId;

  const PatientRiskDetailsScreen({super.key, required this.profileId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(riskProfileDetailsProvider(profileId));
    final isDesktop = context.isDesktop;

    return Scaffold(
      appBar: AppBar(
        title: Text('Risk Profile Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(riskProfileDetailsProvider(profileId));
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: profileAsync.when(
        data: (profile) => SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: isDesktop
                  ? _buildDesktopLayout(context, profile)
                  : _buildMobileLayout(context, profile),
            ),
          ),
        ),
        loading: () => _buildLoadingState(),
        error: (error, stack) => _buildErrorState(context, error),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context, RiskProfileEntity profile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _buildPatientInfoCard(context, profile),
              SizedBox(height: 24),
              _buildRiskFactorsSection(context, profile),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column
        Expanded(
          flex: 1,
          child: Column(
            children: [
              _buildRiskScoreCard(context, profile),
              SizedBox(height: 24),
              _buildProbabilitiesCard(context, profile),
              SizedBox(height: 24),
              _buildCostCard(context, profile),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, RiskProfileEntity profile) {
    return Column(
      children: [
        _buildPatientInfoCard(context, profile),
        SizedBox(height: 16),
        _buildRiskScoreCard(context, profile),
        SizedBox(height: 16),
        _buildProbabilitiesCard(context, profile),
        SizedBox(height: 16),
        _buildCostCard(context, profile),
        SizedBox(height: 16),
        _buildRiskFactorsSection(context, profile),
      ],
    );
  }

  Widget _buildPatientInfoCard(
    BuildContext context,
    RiskProfileEntity profile,
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
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    profile.patientName
                        .split(' ')
                        .map((n) => n[0])
                        .take(2)
                        .join()
                        .toUpperCase(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primarySteelBlue,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.patientName,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${profile.patientAge} years • ${profile.gender} • ${profile.patientId}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: isDark
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),

          // Primary Condition
          if (profile.primaryCondition != null) ...[
            _InfoRow(
              icon: Icons.medical_information,
              label: 'Primary Condition',
              value: profile.primaryCondition!,
            ),
            SizedBox(height: 12),
          ],

          // Comorbidities
          if (profile.comorbidities != null &&
              profile.comorbidities!.isNotEmpty) ...[
            _InfoRow(
              icon: Icons.sick,
              label: 'Comorbidities',
              value: profile.comorbidities!.join(', '),
            ),
            SizedBox(height: 12),
          ],

          // Last Updated
          _InfoRow(
            icon: Icons.update,
            label: 'Last Updated',
            value: profile.lastUpdated.toDateTimeString(),
          ),
        ],
      ),
    );
  }

  Widget _buildRiskScoreCard(BuildContext context, RiskProfileEntity profile) {
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
        children: [
          Text(
            'Risk Score',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          RiskScoreGauge(riskScore: profile.riskScore, size: 160),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: _getRiskColor(profile).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              _getRiskLabel(profile),
              style: theme.textTheme.titleMedium?.copyWith(
                color: _getRiskColor(profile),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProbabilitiesCard(
    BuildContext context,
    RiskProfileEntity profile,
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
          Row(
            children: [
              Icon(
                Icons.assessment,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Probabilities',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _ProbabilityBar(
            label: 'Hospitalization',
            probability: profile.hospitalizationProbability,
            color: AppColors.error,
          ),
          SizedBox(height: 12),
          _ProbabilityBar(
            label: 'Emergency Visit',
            probability: profile.emergencyVisitProbability,
            color: AppColors.warning,
          ),
        ],
      ),
    );
  }

  Widget _buildCostCard(BuildContext context, RiskProfileEntity profile) {
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
                Icons.account_balance_wallet,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Cost Analysis',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _CostItem(
            label: 'Est. Annual Cost',
            value: profile.estimatedAnnualCost.toCurrency(),
            color: AppColors.error,
            icon: Icons.trending_up,
          ),
          SizedBox(height: 12),
          _CostItem(
            label: 'Potential Savings',
            value: profile.potentialSavings.toCurrency(),
            color: AppColors.success,
            icon: Icons.savings,
          ),
        ],
      ),
    );
  }

  Widget _buildRiskFactorsSection(
    BuildContext context,
    RiskProfileEntity profile,
  ) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Risk Factors',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 16),
        ...profile.riskFactors.map((factor) => RiskFactorCard(factor: factor)),
        SizedBox(height: 24),
        Text(
          'Recommended Interventions',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 16),
        ...profile.recommendedInterventions.map(
          (intervention) => InterventionCard(intervention: intervention),
        ),
      ],
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading risk profile...'),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, Object error) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.error),
            SizedBox(height: 16),
            Text(
              'Failed to load risk profile',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Color _getRiskColor(RiskProfileEntity profile) {
    switch (profile.riskLevel) {
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

  String _getRiskLabel(RiskProfileEntity profile) {
    switch (profile.riskLevel) {
      case RiskLevel.critical:
        return 'CRITICAL RISK';
      case RiskLevel.high:
        return 'HIGH RISK';
      case RiskLevel.moderate:
        return 'MODERATE RISK';
      case RiskLevel.low:
        return 'LOW RISK';
    }
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
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
          color: isDark
              ? AppColors.darkTextTertiary
              : AppColors.lightTextTertiary,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProbabilityBar extends StatelessWidget {
  final String label;
  final double probability;
  final Color color;

  const _ProbabilityBar({
    required this.label,
    required this.probability,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '${(probability * 100).toStringAsFixed(1)}%',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: probability),
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.darkSurfaceVariant
                        : AppColors.lightSurfaceVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: value,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _CostItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;

  const _CostItem({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 24),
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
