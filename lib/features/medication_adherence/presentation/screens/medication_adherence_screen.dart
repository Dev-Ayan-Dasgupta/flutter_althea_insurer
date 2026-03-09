import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/medication_adherence_provider.dart';
import '../widgets/patient_adherence_card.dart';
import '../widgets/intervention_action_card.dart';
import '../../domain/entities/patient_adherence_entity.dart';
import '../../domain/entities/intervention_entity.dart';

class MedicationAdherenceScreen extends ConsumerWidget {
  const MedicationAdherenceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patientsAsync = ref.watch(patientAdherenceProvider);
    final interventionsAsync = ref.watch(medicationInterventionsProvider);
    final statsAsync = ref.watch(adherenceStatisticsProvider);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(patientAdherenceProvider);
          ref.invalidate(medicationInterventionsProvider);
          ref.invalidate(adherenceStatisticsProvider);
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
                            Icons.medication,
                            color: AppColors.primarySteelBlue,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Medication Adherence Dashboard',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Real-time medication compliance monitoring and intervention',
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
                      ref.invalidate(patientAdherenceProvider);
                      ref.invalidate(medicationInterventionsProvider);
                      ref.invalidate(adherenceStatisticsProvider);
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
                _buildDesktopLayout(context, patientsAsync, interventionsAsync)
              else
                _buildMobileLayout(context, patientsAsync, interventionsAsync),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryStats(
    BuildContext context,
    AdherenceStatistics stats,
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
          label: 'Total Patients',
          value: stats.totalPatients.toString(),
          color: AppColors.primarySteelBlue,
          icon: Icons.people,
        ),
        _StatChip(
          label: 'Avg Adherence',
          value: '${stats.avgAdherenceRate.toStringAsFixed(0)}%',
          color: _getAdherenceColor(stats.avgAdherenceRate),
          icon: Icons.trending_up,
        ),
        _StatChip(
          label: 'Excellent',
          value: stats.excellentAdherence.toString(),
          color: AppColors.success,
          icon: Icons.check_circle,
        ),
        _StatChip(
          label: 'Needs Help',
          value: stats.requiresIntervention.toString(),
          color: AppColors.error,
          icon: Icons.warning,
        ),
        _StatChip(
          label: 'Interventions',
          value: stats.activeInterventions.toString(),
          color: AppColors.info,
          icon: Icons.assignment,
        ),
        _StatChip(
          label: 'Doses Missed',
          value: stats.totalDosesMissed.toString(),
          color: AppColors.warning,
          icon: Icons.cancel,
        ),
      ],
    );
  }

  Color _getAdherenceColor(double rate) {
    if (rate >= 90) return AppColors.success;
    if (rate >= 75) return AppColors.info;
    if (rate >= 50) return AppColors.warning;
    return AppColors.error;
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
    AsyncValue<List<PatientAdherenceEntity>> patientsAsync,
    AsyncValue<List<InterventionEntity>> interventionsAsync,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Patient List
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Patient Adherence Monitoring',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              patientsAsync.when(
                data: (patients) {
                  // Separate patients who need intervention
                  final needsIntervention = patients
                      .where((p) => p.requiresIntervention)
                      .toList();
                  final goodAdherence = patients
                      .where((p) => !p.requiresIntervention)
                      .toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (needsIntervention.isNotEmpty) ...[
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.error.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.error.withValues(alpha: 0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.warning,
                                color: AppColors.error,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Requires Immediate Attention (${needsIntervention.length})',
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      color: AppColors.error,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        for (var patient in needsIntervention)
                          PatientAdherenceCard(patient: patient),
                        SizedBox(height: 24),
                      ],
                      Text(
                        'Good Adherence (${goodAdherence.length})',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.success,
                            ),
                      ),
                      SizedBox(height: 12),
                      for (var patient in goodAdherence)
                        PatientAdherenceCard(patient: patient),
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 8; i++)
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

        // Right Column - Interventions
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active Interventions',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              interventionsAsync.when(
                data: (interventions) {
                  final active = interventions
                      .where((i) => i.status != InterventionStatus.completed)
                      .toList();
                  final completed = interventions
                      .where((i) => i.status == InterventionStatus.completed)
                      .toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (active.isNotEmpty) ...[
                        for (var intervention in active)
                          InterventionActionCard(intervention: intervention),
                        SizedBox(height: 24),
                      ],
                      if (completed.isNotEmpty) ...[
                        Text(
                          'Recently Completed',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.success,
                              ),
                        ),
                        SizedBox(height: 12),
                        for (var intervention in completed.take(3))
                          InterventionActionCard(intervention: intervention),
                      ],
                    ],
                  );
                },
                loading: () => Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: ShimmerCard(height: 180),
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
    AsyncValue<List<PatientAdherenceEntity>> patientsAsync,
    AsyncValue<List<InterventionEntity>> interventionsAsync,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Active Interventions
        Text(
          'Active Interventions',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        interventionsAsync.when(
          data: (interventions) {
            final active = interventions
                .where((i) => i.status != InterventionStatus.completed)
                .toList();

            return Column(
              children: [
                for (var intervention in active)
                  InterventionActionCard(intervention: intervention),
              ],
            );
          },
          loading: () => Column(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ShimmerCard(height: 180),
                ),
            ],
          ),
          error: (error, stack) => _buildErrorCard(context, error),
        ),
        SizedBox(height: 24),

        // Patient List
        Text(
          'Patient Adherence Monitoring',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        patientsAsync.when(
          data: (patients) {
            final needsIntervention = patients
                .where((p) => p.requiresIntervention)
                .toList();
            final goodAdherence = patients
                .where((p) => !p.requiresIntervention)
                .toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (needsIntervention.isNotEmpty) ...[
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.error.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.warning, color: AppColors.error, size: 20),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Requires Attention (${needsIntervention.length})',
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: AppColors.error,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  for (var patient in needsIntervention)
                    PatientAdherenceCard(patient: patient),
                  SizedBox(height: 24),
                ],
                Text(
                  'Good Adherence (${goodAdherence.length})',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.success,
                  ),
                ),
                SizedBox(height: 12),
                for (var patient in goodAdherence.take(5))
                  PatientAdherenceCard(patient: patient),
                if (goodAdherence.length > 5)
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      '+ ${goodAdherence.length - 5} more patients',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.success,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
              ],
            );
          },
          loading: () => Column(
            children: [
              for (int i = 0; i < 8; i++)
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
            'Failed to load medication adherence data',
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
