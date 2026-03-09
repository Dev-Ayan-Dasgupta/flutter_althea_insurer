import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/fraud_detection_provider.dart';
import '../widgets/fraud_alert_card.dart';
import '../widgets/claim_verification_card.dart';
import '../widgets/fraud_pattern_chart.dart';
import '../widgets/investigation_case_card.dart';
import '../../domain/entities/fraud_alert_entity.dart';
import '../../domain/entities/claim_verification_entity.dart';
import '../../domain/entities/fraud_pattern_entity.dart';
import '../../domain/entities/investigation_case_entity.dart';

class FraudDetectionScreen extends ConsumerWidget {
  const FraudDetectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alertsAsync = ref.watch(fraudAlertsProvider);
    final verificationsAsync = ref.watch(claimVerificationsProvider);
    final patternsAsync = ref.watch(fraudPatternsProvider);
    final casesAsync = ref.watch(investigationCasesProvider);
    final statsAsync = ref.watch(fraudDetectionStatsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(fraudAlertsProvider);
          ref.invalidate(claimVerificationsProvider);
          ref.invalidate(fraudPatternsProvider);
          ref.invalidate(investigationCasesProvider);
          ref.invalidate(fraudDetectionStatsProvider);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.security,
                            color: AppColors.emergencyRed,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Fraud Detection Console',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'AI-powered fraud detection and claim verification',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      ref.invalidate(fraudAlertsProvider);
                      ref.invalidate(claimVerificationsProvider);
                      ref.invalidate(fraudPatternsProvider);
                      ref.invalidate(investigationCasesProvider);
                      ref.invalidate(fraudDetectionStatsProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Summary Stats
              statsAsync.when(
                data: (stats) => _buildSummaryStats(context, stats, isDesktop),
                loading: () => _buildStatsShimmer(isDesktop),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Main Content
              if (isDesktop)
                _buildDesktopLayout(
                  context,
                  alertsAsync,
                  verificationsAsync,
                  patternsAsync,
                  casesAsync,
                )
              else
                _buildMobileLayout(
                  context,
                  alertsAsync,
                  verificationsAsync,
                  patternsAsync,
                  casesAsync,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    FraudDetectionStatistics stats,
    bool isDesktop,
  ) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 6 : 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.2,
      children: [
        _StatChip(
          label: 'Total Alerts',
          value: stats.totalAlerts.toString(),
          color: AppColors.warning,
          icon: Icons.warning,
        ),
        _StatChip(
          label: 'Critical',
          value: stats.criticalAlerts.toString(),
          color: AppColors.emergencyRed,
          icon: Icons.priority_high,
        ),
        _StatChip(
          label: 'Confirmed Fraud',
          value: stats.confirmedFraud.toString(),
          color: AppColors.error,
          icon: Icons.report,
        ),
        _StatChip(
          label: 'Amount Saved',
          value: stats.totalPreventedLoss.toCompactCurrency(),
          color: AppColors.success,
          icon: Icons.savings,
        ),
        _StatChip(
          label: 'Active Cases',
          value: stats.activeCases.toString(),
          color: AppColors.info,
          icon: Icons.folder_open,
        ),
        _StatChip(
          label: 'Recovered',
          value: stats.totalRecovered.toCompactCurrency(),
          color: AppColors.primarySteelBlue,
          icon: Icons.account_balance,
        ),
      ],
    );
  }

  Widget _buildStatsShimmer(bool isDesktop) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isDesktop ? 6 : 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: isDesktop ? 2.0 : 1.2,
      children: List.generate(6, (index) => ShimmerCard(height: 80)),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    AsyncValue<List<FraudAlertEntity>> alertsAsync,
    AsyncValue<List<ClaimVerificationEntity>> verificationsAsync,
    AsyncValue<List<FraudPatternEntity>> patternsAsync,
    AsyncValue<List<InvestigationCaseEntity>> casesAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Alerts & Verifications
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fraud Alerts
              Text(
                'Active Fraud Alerts',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              alertsAsync.when(
                data: (alerts) {
                  final criticalAlerts = alerts
                      .where(
                        (a) =>
                            a.severity == FraudAlertSeverity.critical ||
                            a.severity == FraudAlertSeverity.high,
                      )
                      .toList();
                  final otherAlerts = alerts
                      .where(
                        (a) =>
                            a.severity != FraudAlertSeverity.critical &&
                            a.severity != FraudAlertSeverity.high,
                      )
                      .toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (criticalAlerts.isNotEmpty) ...[
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.emergencyRed.withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.emergencyRed.withValues(
                                alpha: 0.3,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.warning,
                                color: AppColors.emergencyRed,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Critical & High Priority (${criticalAlerts.length})',
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      color: AppColors.emergencyRed,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        for (var alert in criticalAlerts)
                          FraudAlertCard(alert: alert),
                        SizedBox(height: 24),
                      ],
                      if (otherAlerts.isNotEmpty) ...[
                        Text(
                          'Other Alerts (${otherAlerts.length})',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        for (var alert in otherAlerts.take(3))
                          FraudAlertCard(alert: alert),
                        if (otherAlerts.length > 3)
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              '+ ${otherAlerts.length - 3} more alerts',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: AppColors.info,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                      ],
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 220),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Claim Verifications
              Text(
                'Claim Verifications',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              verificationsAsync.when(
                data: (verifications) => Column(
                  children: [
                    for (var verification in verifications)
                      ClaimVerificationCard(verification: verification),
                  ],
                ),
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 200),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column - Patterns & Cases
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fraud Patterns
              patternsAsync.when(
                data: (patterns) => FraudPatternChart(patterns: patterns),
                loading: () => ShimmerCard(height: 600),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
              SizedBox(height: 24),

              // Investigation Cases
              Text(
                'Active Investigations',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              casesAsync.when(
                data: (cases) {
                  final activeCases = cases
                      .where((c) => c.status != CaseStatus.closed)
                      .toList();
                  return Column(
                    children: [
                      for (var caseEntity in activeCases)
                        InvestigationCaseCard(caseEntity: caseEntity),
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 280),
                      ),
                  ],
                ),
                error: (error, stack) => _buildErrorCard(context, error),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    AsyncValue<List<FraudAlertEntity>> alertsAsync,
    AsyncValue<List<ClaimVerificationEntity>> verificationsAsync,
    AsyncValue<List<FraudPatternEntity>> patternsAsync,
    AsyncValue<List<InvestigationCaseEntity>> casesAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Fraud Alerts
        Text(
          'Active Fraud Alerts',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        alertsAsync.when(
          data: (alerts) {
            final criticalAlerts = alerts
                .where(
                  (a) =>
                      a.severity == FraudAlertSeverity.critical ||
                      a.severity == FraudAlertSeverity.high,
                )
                .toList();

            return Column(
              children: [
                if (criticalAlerts.isNotEmpty) ...[
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.emergencyRed.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.emergencyRed.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning,
                          color: AppColors.emergencyRed,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Critical Alerts (${criticalAlerts.length})',
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: AppColors.emergencyRed,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                ],
                for (var alert in alerts.take(5)) FraudAlertCard(alert: alert),
                if (alerts.length > 5)
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      '+ ${alerts.length - 5} more alerts',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.info,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
              ],
            );
          },
          loading: () => Column(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 220),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Fraud Patterns
        patternsAsync.when(
          data: (patterns) => FraudPatternChart(patterns: patterns),
          loading: () => ShimmerCard(height: 500),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Investigation Cases
        Text(
          'Active Investigations',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        casesAsync.when(
          data: (cases) {
            final activeCases = cases
                .where((c) => c.status != CaseStatus.closed)
                .toList();
            return Column(
              children: [
                for (var caseEntity in activeCases)
                  InvestigationCaseCard(caseEntity: caseEntity),
              ],
            );
          },
          loading: () => Column(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 280),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Claim Verifications
        Text(
          'Claim Verifications',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        verificationsAsync.when(
          data: (verifications) => Column(
            children: [
              for (var verification in verifications.take(3))
                ClaimVerificationCard(verification: verification),
            ],
          ),
          loading: () => Column(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 200),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
      ],
    );
  }

  Widget _buildErrorCard(BuildContext context, Object error) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(Icons.error_outline, color: AppColors.error, size: 48),
          SizedBox(height: 16),
          Text(
            'Failed to load fraud detection data',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            error.toString(),
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;

  const _StatChip({
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
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(height: 6),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
              fontSize: 10,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
