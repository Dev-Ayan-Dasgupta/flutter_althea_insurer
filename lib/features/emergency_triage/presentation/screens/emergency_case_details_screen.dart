import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/emergency_case_entity.dart';
import '../providers/emergency_triage_provider.dart';
import '../widgets/severity_badge.dart';
import '../widgets/vitals_display.dart';
import '../widgets/pre_auth_dialog.dart';

class EmergencyCaseDetailsScreen extends ConsumerWidget {
  final String caseId;

  const EmergencyCaseDetailsScreen({super.key, required this.caseId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final caseAsync = ref.watch(emergencyCaseDetailsProvider(caseId));
    final isDesktop = context.isDesktop;

    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Case Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(emergencyCaseDetailsProvider(caseId));
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: caseAsync.when(
        data: (case_) => SingleChildScrollView(
          padding: EdgeInsets.all(isDesktop ? 24 : 16),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: isDesktop
                  ? _buildDesktopLayout(context, ref, case_)
                  : _buildMobileLayout(context, ref, case_),
            ),
          ),
        ),
        loading: () => _buildLoadingState(),
        error: (error, stack) => _buildErrorState(context, error),
      ),
      floatingActionButton: caseAsync.maybeWhen(
        data: (case_) => case_.preAuth == null
            ? FloatingActionButton.extended(
                onPressed: () => _showPreAuthDialog(context, case_),
                icon: Icon(Icons.approval),
                label: Text('Approve Pre-Auth'),
                backgroundColor: AppColors.success,
              )
            : null,
        orElse: () => null,
      ),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    WidgetRef ref,
    EmergencyCaseEntity case_,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _buildMainInfoCard(context, case_),
              SizedBox(height: 24),
              _buildVitalsCard(context, case_),
              SizedBox(height: 24),
              _buildTimelineCard(context, case_),
            ],
          ),
        ),
        SizedBox(width: 24),

        // Right Column
        Expanded(
          flex: 1,
          child: Column(
            children: [
              if (case_.preAuth != null) ...[
                _buildPreAuthCard(context, case_),
                SizedBox(height: 24),
              ],
              _buildLocationCard(context, case_),
              SizedBox(height: 24),
              _buildMedicalHistoryCard(context, case_),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    WidgetRef ref,
    EmergencyCaseEntity case_,
  ) {
    return Column(
      children: [
        _buildMainInfoCard(context, case_),
        SizedBox(height: 16),
        if (case_.preAuth != null) ...[
          _buildPreAuthCard(context, case_),
          SizedBox(height: 16),
        ],
        _buildVitalsCard(context, case_),
        SizedBox(height: 16),
        _buildTimelineCard(context, case_),
        SizedBox(height: 16),
        _buildLocationCard(context, case_),
        SizedBox(height: 16),
        _buildMedicalHistoryCard(context, case_),
      ],
    );
  }

  Widget _buildMainInfoCard(BuildContext context, EmergencyCaseEntity case_) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _getSeverityColor(case_).withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SeverityBadge(severity: case_.severity),
              Spacer(),
              Text(
                case_.id,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextTertiary
                      : AppColors.lightTextTertiary,
                  fontFamily: 'monospace',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Patient Name
          Text(
            case_.patientName,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '${case_.patientAge} years • ${case_.patientId}',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),

          // Chief Complaint
          _InfoRow(
            icon: Icons.medical_information,
            label: 'Chief Complaint',
            value: case_.chiefComplaint,
          ),
          SizedBox(height: 16),

          // Ambulance & Paramedic
          _InfoRow(
            icon: Icons.directions_car,
            label: 'Ambulance',
            value: '${case_.ambulanceId} • ${case_.paramedicName}',
          ),
          SizedBox(height: 16),

          // Hospital
          _InfoRow(
            icon: Icons.local_hospital,
            label: 'Destination Hospital',
            value: case_.destinationHospital,
          ),
          SizedBox(height: 16),

          // Estimated Cost
          _InfoRow(
            icon: Icons.currency_rupee,
            label: 'Estimated Cost',
            value: case_.estimatedCost.toCurrency(),
            valueColor: _getSeverityColor(case_),
          ),
        ],
      ),
    );
  }

  Widget _buildVitalsCard(BuildContext context, EmergencyCaseEntity case_) {
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
                Icons.monitor_heart,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Patient Vitals',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                case_.vitals.recordedAt.toRelativeString(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          VitalsDisplay(vitals: case_.vitals),
        ],
      ),
    );
  }

  Widget _buildTimelineCard(BuildContext context, EmergencyCaseEntity case_) {
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
              Icon(Icons.timeline, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Timeline',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _TimelineItem(
            label: 'Dispatched',
            time: case_.dispatchedAt,
            isCompleted: true,
          ),
          if (case_.arrivedAt != null) ...[
            _TimelineItem(
              label: 'Arrived on Scene',
              time: case_.arrivedAt!,
              isCompleted: true,
            ),
          ],
          if (case_.transportedAt != null) ...[
            _TimelineItem(
              label: 'Transporting to Hospital',
              time: case_.transportedAt!,
              isCompleted: true,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPreAuthCard(BuildContext context, EmergencyCaseEntity case_) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.success.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.success.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.check_circle, color: AppColors.success, size: 20),
              SizedBox(width: 8),
              Text(
                'Pre-Authorization Approved',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.success,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _InfoRow(
            icon: Icons.currency_rupee,
            label: 'Approved Amount',
            value: case_.preAuth!.approvedAmount.toCurrency(),
            valueColor: AppColors.success,
          ),
          SizedBox(height: 12),
          _InfoRow(
            icon: Icons.person,
            label: 'Approved By',
            value: case_.preAuth!.approvedBy,
          ),
          SizedBox(height: 12),
          _InfoRow(
            icon: Icons.access_time,
            label: 'Approved At',
            value: case_.preAuth!.approvedAt.toDateTimeString(),
          ),
          if (case_.preAuth!.notes != null) ...[
            SizedBox(height: 12),
            _InfoRow(
              icon: Icons.notes,
              label: 'Notes',
              value: case_.preAuth!.notes!,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLocationCard(BuildContext context, EmergencyCaseEntity case_) {
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
                Icons.location_on,
                color: AppColors.primarySteelBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Location',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(case_.location, style: theme.textTheme.bodyLarge),
          if (case_.latitude != null && case_.longitude != null) ...[
            SizedBox(height: 8),
            Text(
              'GPS: ${case_.latitude!.toStringAsFixed(6)}, ${case_.longitude!.toStringAsFixed(6)}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
                fontFamily: 'monospace',
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMedicalHistoryCard(
    BuildContext context,
    EmergencyCaseEntity case_,
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
              Icon(Icons.history, color: AppColors.primarySteelBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Medical History',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            case_.medicalHistory ?? 'No medical history available',
            style: theme.textTheme.bodyMedium,
          ),
          if (case_.medications != null && case_.medications!.isNotEmpty) ...[
            SizedBox(height: 16),
            Text(
              'Current Medications',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            ...case_.medications!.map(
              (med) => Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Icon(Icons.medication, size: 16, color: AppColors.info),
                    SizedBox(width: 8),
                    Text(med, style: theme.textTheme.bodySmall),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
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
            Text('Loading emergency case details...'),
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
              'Failed to load emergency case',
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

  Color _getSeverityColor(EmergencyCaseEntity case_) {
    switch (case_.severity) {
      case EmergencySeverity.critical:
        return AppColors.emergencyRed;
      case EmergencySeverity.high:
        return AppColors.emergencyAmber;
      case EmergencySeverity.moderate:
        return AppColors.warning;
      case EmergencySeverity.low:
        return AppColors.success;
    }
  }

  void _showPreAuthDialog(BuildContext context, EmergencyCaseEntity case_) {
    showDialog(
      context: context,
      builder: (context) => PreAuthDialog(
        caseId: case_.id,
        estimatedCost: case_.estimatedCost,
        patientName: case_.patientName,
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
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
                  color: valueColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final String label;
  final DateTime time;
  final bool isCompleted;

  const _TimelineItem({
    required this.label,
    required this.time,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: isCompleted
                  ? AppColors.success.withValues(alpha: 0.1)
                  : (isDark
                        ? AppColors.darkSurfaceVariant
                        : AppColors.lightSurfaceVariant),
              shape: BoxShape.circle,
              border: Border.all(
                color: isCompleted
                    ? AppColors.success
                    : AppColors.secondarySteelGrey,
                width: 2,
              ),
            ),
            child: Icon(
              Icons.check,
              size: 16,
              color: isCompleted
                  ? AppColors.success
                  : AppColors.secondarySteelGrey,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  time.toDateTimeString(),
                  style: theme.textTheme.bodySmall?.copyWith(
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
    );
  }
}
