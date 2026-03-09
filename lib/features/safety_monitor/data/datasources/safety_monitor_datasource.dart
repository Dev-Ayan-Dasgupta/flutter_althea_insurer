import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/cohort_model.dart';
import '../models/safety_alert_model.dart';
import '../models/risk_assessment_model.dart';
import '../models/preventive_action_model.dart';

class SafetyMonitorDatasource {
  final Random _random = Random();

  final List<String> _elderlyNames = [
    'Ramesh Kumar',
    'Lakshmi Devi',
    'Suresh Patel',
    'Meera Sharma',
    'Vijay Singh',
    'Kamala Reddy',
    'Ashok Gupta',
    'Savitri Nair',
  ];

  final List<String> _pregnancyNames = [
    'Priya Mehta',
    'Ananya Desai',
    'Neha Kapoor',
    'Ritu Agarwal',
    'Kavya Iyer',
    'Shruti Joshi',
  ];

  final List<String> _infantNames = [
    'Baby Arjun',
    'Baby Aisha',
    'Baby Rohan',
    'Baby Diya',
    'Baby Advait',
    'Baby Anvi',
  ];

  final List<String> _accidentNames = [
    'Rajesh Verma',
    'Amit Kulkarni',
    'Sanjay Rao',
    'Vikram Nair',
  ];

  final List<String> _terminalNames = [
    'Mohan Das',
    'Shanti Bai',
    'Gopal Krishna',
  ];

  // Fetch cohorts data
  Future<List<CohortModel>> fetchCohorts() async {
    try {
      Logger.info('Fetching safety cohorts', tag: 'SafetyMonitorDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final cohorts = [
        // Elderly Cohort
        CohortModel(
          id: 'COH001',
          cohortType: 'elderly',
          cohortName: 'Elderly Care (65+)',
          description: 'Fall risk monitoring and mobility support',
          totalPatients: 420,
          lowRisk: 180,
          moderateRisk: 140,
          highRisk: 80,
          criticalRisk: 20,
          activeAlerts: 28,
          incidentsThisMonth: 12,
          incidentsLastMonth: 19,
          incidentChangePercentage: -36.8,
          avgRiskScore: 58.5,
          preventiveActionsActive: 85,
          topRiskFactors: [
            'Gait instability',
            'Poor lighting',
            'Multiple medications',
            'Vision impairment',
          ],
          costImpact: 38000.0,
        ),

        // Pregnancy Cohort
        CohortModel(
          id: 'COH002',
          cohortType: 'pregnancy',
          cohortName: 'Maternal Care',
          description: 'High-risk pregnancy monitoring',
          totalPatients: 85,
          lowRisk: 45,
          moderateRisk: 25,
          highRisk: 12,
          criticalRisk: 3,
          activeAlerts: 8,
          incidentsThisMonth: 2,
          incidentsLastMonth: 4,
          incidentChangePercentage: -50.0,
          avgRiskScore: 42.3,
          preventiveActionsActive: 32,
          topRiskFactors: [
            'Gestational diabetes',
            'Hypertension',
            'Previous complications',
            'Advanced maternal age',
          ],
          costImpact: 125000.0,
        ),

        // Infant/Toddler Cohort
        CohortModel(
          id: 'COH003',
          cohortType: 'infant_toddler',
          cohortName: 'Infant & Toddler Care',
          description: 'Neonatal and early childhood monitoring',
          totalPatients: 62,
          lowRisk: 40,
          moderateRisk: 15,
          highRisk: 5,
          criticalRisk: 2,
          activeAlerts: 5,
          incidentsThisMonth: 3,
          incidentsLastMonth: 3,
          incidentChangePercentage: 0.0,
          avgRiskScore: 35.8,
          preventiveActionsActive: 28,
          topRiskFactors: [
            'Premature birth',
            'Low birth weight',
            'Respiratory issues',
            'Feeding difficulties',
          ],
          costImpact: 95000.0,
        ),

        // Accident Recovery Cohort
        CohortModel(
          id: 'COH004',
          cohortType: 'accident_recovery',
          cohortName: 'Accident Recovery',
          description: 'Post-accident rehabilitation monitoring',
          totalPatients: 48,
          lowRisk: 18,
          moderateRisk: 20,
          highRisk: 8,
          criticalRisk: 2,
          activeAlerts: 6,
          incidentsThisMonth: 4,
          incidentsLastMonth: 7,
          incidentChangePercentage: -42.9,
          avgRiskScore: 52.7,
          preventiveActionsActive: 24,
          topRiskFactors: [
            'Limited mobility',
            'Pain management',
            'Infection risk',
            'Medication adherence',
          ],
          costImpact: 68000.0,
        ),

        // Terminal Illness Cohort
        CohortModel(
          id: 'COH005',
          cohortType: 'terminal_illness',
          cohortName: 'Palliative Care',
          description: 'End-of-life comfort and dignity monitoring',
          totalPatients: 28,
          lowRisk: 5,
          moderateRisk: 8,
          highRisk: 10,
          criticalRisk: 5,
          activeAlerts: 12,
          incidentsThisMonth: 8,
          incidentsLastMonth: 6,
          incidentChangePercentage: 33.3,
          avgRiskScore: 78.2,
          preventiveActionsActive: 22,
          topRiskFactors: [
            'Pain escalation',
            'Breathing difficulties',
            'Emotional distress',
            'Caregiver burnout',
          ],
          costImpact: 85000.0,
        ),
      ];

      Logger.info(
        'Fetched ${cohorts.length} cohorts',
        tag: 'SafetyMonitorDatasource',
      );
      return cohorts;
    } catch (e) {
      Logger.error(
        'Error fetching cohorts',
        tag: 'SafetyMonitorDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch safety alerts
  Future<List<SafetyAlertModel>> fetchSafetyAlerts({String? cohortType}) async {
    try {
      Logger.info('Fetching safety alerts', tag: 'SafetyMonitorDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final alerts = <SafetyAlertModel>[];

      // Elderly alerts
      alerts.addAll([
        SafetyAlertModel(
          id: 'ALT001',
          alertType: 'fall_risk',
          severity: 'high',
          cohortType: 'elderly',
          patientName: 'Ramesh Kumar',
          patientId: 'PAT001',
          alertMessage: 'Abnormal gait pattern detected',
          detectedReason:
              'Wearable sensor detected irregular walking pattern and reduced balance',
          detectedAt: now.subtract(Duration(minutes: 45)),
          requiresImmediateAction: true,
          recommendedAction:
              'Schedule urgent physiotherapy assessment and home safety inspection',
          assignedCaregiver: 'Nurse Priya',
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT002',
          alertType: 'inactivity',
          severity: 'medium',
          cohortType: 'elderly',
          patientName: 'Lakshmi Devi',
          patientId: 'PAT002',
          alertMessage: 'Reduced activity for 14 hours',
          detectedReason: 'No movement detected since yesterday evening',
          detectedAt: now.subtract(Duration(hours: 2)),
          requiresImmediateAction: true,
          recommendedAction:
              'Immediate caregiver visit to check patient wellbeing',
          assignedCaregiver: null,
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT003',
          alertType: 'mobility_declining',
          severity: 'medium',
          cohortType: 'elderly',
          patientName: 'Suresh Patel',
          patientId: 'PAT003',
          alertMessage: 'Movement range decreased by 30%',
          detectedReason: 'Weekly mobility assessment shows declining trend',
          detectedAt: now.subtract(Duration(hours: 5)),
          requiresImmediateAction: false,
          recommendedAction: 'Schedule physiotherapy session within 48 hours',
          assignedCaregiver: 'Physio Raj',
          actionTaken: false,
        ),
      ]);

      // Pregnancy alerts
      alerts.addAll([
        SafetyAlertModel(
          id: 'ALT004',
          alertType: 'abnormal_vitals',
          severity: 'critical',
          cohortType: 'pregnancy',
          patientName: 'Priya Mehta',
          patientId: 'PAT010',
          alertMessage: 'Blood pressure spike detected',
          detectedReason: 'BP reading: 160/110 mmHg - Risk of preeclampsia',
          detectedAt: now.subtract(Duration(minutes: 15)),
          requiresImmediateAction: true,
          recommendedAction:
              'URGENT: Ambulance dispatch for hospital admission',
          assignedCaregiver: 'Dr. Sharma',
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT005',
          alertType: 'maternal_complication',
          severity: 'high',
          cohortType: 'pregnancy',
          patientName: 'Ananya Desai',
          patientId: 'PAT011',
          alertMessage: 'Reduced fetal movement',
          detectedReason: 'Mother reports decreased baby movement over 6 hours',
          detectedAt: now.subtract(Duration(hours: 1)),
          requiresImmediateAction: true,
          recommendedAction: 'Emergency teleconsult with OB/GYN immediately',
          assignedCaregiver: 'Nurse Kavita',
          actionTaken: false,
        ),
      ]);

      // Infant alerts
      alerts.addAll([
        SafetyAlertModel(
          id: 'ALT006',
          alertType: 'infant_distress',
          severity: 'high',
          cohortType: 'infant_toddler',
          patientName: 'Baby Arjun',
          patientId: 'PAT020',
          alertMessage: 'Irregular breathing pattern',
          detectedReason: 'Respiratory rate: 65 breaths/min (normal: 30-40)',
          detectedAt: now.subtract(Duration(minutes: 30)),
          requiresImmediateAction: true,
          recommendedAction: 'Immediate pediatric consultation required',
          assignedCaregiver: 'Pediatric Nurse Meera',
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT007',
          alertType: 'abnormal_vitals',
          severity: 'medium',
          cohortType: 'infant_toddler',
          patientName: 'Baby Diya',
          patientId: 'PAT021',
          alertMessage: 'Elevated temperature',
          detectedReason: 'Temperature: 38.5°C - Monitor for infection',
          detectedAt: now.subtract(Duration(hours: 3)),
          requiresImmediateAction: false,
          recommendedAction:
              'Monitor temperature every 2 hours, nurse visit within 4 hours',
          assignedCaregiver: 'Nurse Sunita',
          actionTaken: true,
        ),
      ]);

      // Accident recovery alerts
      alerts.addAll([
        SafetyAlertModel(
          id: 'ALT008',
          alertType: 'pain_escalation',
          severity: 'high',
          cohortType: 'accident_recovery',
          patientName: 'Rajesh Verma',
          patientId: 'PAT030',
          alertMessage: 'Pain score increased to 8/10',
          detectedReason: 'Patient reported severe pain in recovery area',
          detectedAt: now.subtract(Duration(minutes: 20)),
          requiresImmediateAction: true,
          recommendedAction:
              'Pain management protocol activation and doctor consultation',
          assignedCaregiver: 'Nurse Anjali',
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT009',
          alertType: 'recovery_setback',
          severity: 'medium',
          cohortType: 'accident_recovery',
          patientName: 'Amit Kulkarni',
          patientId: 'PAT031',
          alertMessage: 'Mobility progress stalled',
          detectedReason: 'No improvement in range of motion for 5 days',
          detectedAt: now.subtract(Duration(hours: 6)),
          requiresImmediateAction: false,
          recommendedAction:
              'Reassess physiotherapy plan and increase session frequency',
          assignedCaregiver: 'Physio Kumar',
          actionTaken: false,
        ),
      ]);

      // Terminal illness alerts
      alerts.addAll([
        SafetyAlertModel(
          id: 'ALT010',
          alertType: 'pain_escalation',
          severity: 'critical',
          cohortType: 'terminal_illness',
          patientName: 'Mohan Das',
          patientId: 'PAT040',
          alertMessage: 'Severe pain episode',
          detectedReason: 'Breakthrough pain despite medication protocol',
          detectedAt: now.subtract(Duration(minutes: 10)),
          requiresImmediateAction: true,
          recommendedAction:
              'URGENT: Palliative care doctor consultation for pain protocol adjustment',
          assignedCaregiver: 'Dr. Patel',
          actionTaken: false,
        ),
        SafetyAlertModel(
          id: 'ALT011',
          alertType: 'caregiver_alert',
          severity: 'medium',
          cohortType: 'terminal_illness',
          patientName: 'Shanti Bai',
          patientId: 'PAT041',
          alertMessage: 'Family caregiver distress',
          detectedReason:
              'Primary caregiver showing signs of emotional exhaustion',
          detectedAt: now.subtract(Duration(hours: 4)),
          requiresImmediateAction: false,
          recommendedAction:
              'Arrange mental health support and respite care options',
          assignedCaregiver: 'Counselor Riya',
          actionTaken: false,
        ),
      ]);

      // Filter by cohort type if specified
      if (cohortType != null) {
        alerts.retainWhere((alert) => alert.cohortType == cohortType);
      }

      Logger.info(
        'Fetched ${alerts.length} safety alerts',
        tag: 'SafetyMonitorDatasource',
      );
      return alerts;
    } catch (e) {
      Logger.error(
        'Error fetching safety alerts',
        tag: 'SafetyMonitorDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch risk assessments
  Future<List<RiskAssessmentModel>> fetchRiskAssessments({
    String? cohortType,
  }) async {
    try {
      Logger.info('Fetching risk assessments', tag: 'SafetyMonitorDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final assessments = <RiskAssessmentModel>[];

      // Elderly assessments
      assessments.addAll([
        RiskAssessmentModel(
          id: 'RA001',
          patientName: 'Ramesh Kumar',
          patientId: 'PAT001',
          cohortType: 'elderly',
          riskLevel: 'high',
          riskScore: 75.5,
          riskFactors: [
            RiskFactorModel(
              factor: 'Gait Instability',
              score: 25,
              description: 'Significant balance issues during walking',
            ),
            RiskFactorModel(
              factor: 'Vision Impairment',
              score: 20,
              description: 'Reduced visual acuity affecting obstacle detection',
            ),
            RiskFactorModel(
              factor: 'Polypharmacy',
              score: 15,
              description: 'Taking 6+ medications affecting alertness',
            ),
            RiskFactorModel(
              factor: 'Previous Fall',
              score: 15,
              description: 'Fall incident 3 months ago',
            ),
          ],
          lastAssessment: now.subtract(Duration(days: 7)),
          nextAssessment: now.add(Duration(days: 7)),
          assessedBy: 'Nurse Priya',
        ),
      ]);

      // Pregnancy assessments
      assessments.addAll([
        RiskAssessmentModel(
          id: 'RA002',
          patientName: 'Priya Mehta',
          patientId: 'PAT010',
          cohortType: 'pregnancy',
          riskLevel: 'critical',
          riskScore: 85.0,
          riskFactors: [
            RiskFactorModel(
              factor: 'Gestational Hypertension',
              score: 30,
              description: 'Elevated BP requiring monitoring',
            ),
            RiskFactorModel(
              factor: 'Gestational Diabetes',
              score: 25,
              description: 'Blood glucose control challenges',
            ),
            RiskFactorModel(
              factor: 'Advanced Maternal Age',
              score: 20,
              description: 'Age 38 - increased complication risk',
            ),
            RiskFactorModel(
              factor: 'Previous C-Section',
              score: 10,
              description: 'Prior surgical delivery',
            ),
          ],
          lastAssessment: now.subtract(Duration(days: 3)),
          nextAssessment: now.add(Duration(days: 4)),
          assessedBy: 'Dr. Sharma',
        ),
      ]);

      // Infant assessments
      assessments.addAll([
        RiskAssessmentModel(
          id: 'RA003',
          patientName: 'Baby Arjun',
          patientId: 'PAT020',
          cohortType: 'infant_toddler',
          riskLevel: 'high',
          riskScore: 72.0,
          riskFactors: [
            RiskFactorModel(
              factor: 'Premature Birth',
              score: 30,
              description: 'Born at 32 weeks gestation',
            ),
            RiskFactorModel(
              factor: 'Low Birth Weight',
              score: 20,
              description: '1.8 kg at birth',
            ),
            RiskFactorModel(
              factor: 'Respiratory Support',
              score: 15,
              description: 'Required oxygen support initially',
            ),
            RiskFactorModel(
              factor: 'Feeding Challenges',
              score: 7,
              description: 'Difficulty establishing breastfeeding',
            ),
          ],
          lastAssessment: now.subtract(Duration(days: 2)),
          nextAssessment: now.add(Duration(days: 2)),
          assessedBy: 'Pediatric Nurse Meera',
        ),
      ]);

      // Accident recovery assessments
      assessments.addAll([
        RiskAssessmentModel(
          id: 'RA004',
          patientName: 'Rajesh Verma',
          patientId: 'PAT030',
          cohortType: 'accident_recovery',
          riskLevel: 'high',
          riskScore: 68.5,
          riskFactors: [
            RiskFactorModel(
              factor: 'Multiple Fractures',
              score: 25,
              description: 'Healing fractures in femur and ribs',
            ),
            RiskFactorModel(
              factor: 'Limited Mobility',
              score: 20,
              description: 'Wheelchair dependent currently',
            ),
            RiskFactorModel(
              factor: 'Pain Management',
              score: 15,
              description: 'Chronic pain affecting recovery',
            ),
            RiskFactorModel(
              factor: 'Infection Risk',
              score: 8,
              description: 'Surgical site monitoring required',
            ),
          ],
          lastAssessment: now.subtract(Duration(days: 5)),
          nextAssessment: now.add(Duration(days: 9)),
          assessedBy: 'Physio Kumar',
        ),
      ]);

      // Terminal illness assessments
      assessments.addAll([
        RiskAssessmentModel(
          id: 'RA005',
          patientName: 'Mohan Das',
          patientId: 'PAT040',
          cohortType: 'terminal_illness',
          riskLevel: 'critical',
          riskScore: 92.0,
          riskFactors: [
            RiskFactorModel(
              factor: 'Advanced Disease',
              score: 35,
              description: 'Stage 4 cancer progression',
            ),
            RiskFactorModel(
              factor: 'Pain Control',
              score: 25,
              description: 'Complex pain management needs',
            ),
            RiskFactorModel(
              factor: 'Respiratory Distress',
              score: 20,
              description: 'Increasing breathing difficulties',
            ),
            RiskFactorModel(
              factor: 'Emotional Distress',
              score: 12,
              description: 'Anxiety and depression symptoms',
            ),
          ],
          lastAssessment: now.subtract(Duration(days: 1)),
          nextAssessment: now.add(Duration(days: 2)),
          assessedBy: 'Dr. Patel (Palliative)',
        ),
      ]);

      // Filter by cohort type if specified
      if (cohortType != null) {
        assessments.retainWhere(
          (assessment) => assessment.cohortType == cohortType,
        );
      }

      Logger.info(
        'Fetched ${assessments.length} risk assessments',
        tag: 'SafetyMonitorDatasource',
      );
      return assessments;
    } catch (e) {
      Logger.error(
        'Error fetching risk assessments',
        tag: 'SafetyMonitorDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch preventive actions
  Future<List<PreventiveActionModel>> fetchPreventiveActions({
    String? cohortType,
  }) async {
    try {
      Logger.info(
        'Fetching preventive actions',
        tag: 'SafetyMonitorDatasource',
      );

      await Future.delayed(Duration(milliseconds: 400));

      final now = DateTime.now();
      final actions = <PreventiveActionModel>[];

      // Elderly actions
      actions.addAll([
        PreventiveActionModel(
          id: 'PA001',
          actionType: 'home_safety_inspection',
          actionName: 'Home Safety Assessment',
          cohortType: 'elderly',
          patientName: 'Ramesh Kumar',
          patientId: 'PAT001',
          status: 'scheduled',
          scheduledFor: now.add(Duration(hours: 4)),
          assignedTo: 'Safety Inspector Ravi',
          notes: 'Check lighting, remove trip hazards, install grab bars',
        ),
        PreventiveActionModel(
          id: 'PA002',
          actionType: 'physiotherapy',
          actionName: 'Balance & Gait Training',
          cohortType: 'elderly',
          patientName: 'Lakshmi Devi',
          patientId: 'PAT002',
          status: 'in_progress',
          scheduledFor: now.subtract(Duration(hours: 1)),
          assignedTo: 'Physio Raj',
          notes: '3x weekly sessions for mobility improvement',
        ),
        PreventiveActionModel(
          id: 'PA003',
          actionType: 'wearable_calibration',
          actionName: 'Fall Detection Sensor Setup',
          cohortType: 'elderly',
          patientName: 'Suresh Patel',
          patientId: 'PAT003',
          status: 'completed',
          scheduledFor: now.subtract(Duration(days: 2)),
          assignedTo: 'Tech Support',
          notes: 'Wearable configured for fall detection',
          completedAt: now.subtract(Duration(days: 2, hours: 2)),
        ),
      ]);

      // Pregnancy actions
      actions.addAll([
        PreventiveActionModel(
          id: 'PA004',
          actionType: 'prenatal_checkup',
          actionName: 'Urgent BP Monitoring',
          cohortType: 'pregnancy',
          patientName: 'Priya Mehta',
          patientId: 'PAT010',
          status: 'pending',
          scheduledFor: now.add(Duration(hours: 2)),
          assignedTo: 'Dr. Sharma',
          notes: 'Daily BP monitoring due to hypertension risk',
        ),
        PreventiveActionModel(
          id: 'PA005',
          actionType: 'nutrition_counseling',
          actionName: 'Gestational Diabetes Diet Plan',
          cohortType: 'pregnancy',
          patientName: 'Ananya Desai',
          patientId: 'PAT011',
          status: 'scheduled',
          scheduledFor: now.add(Duration(days: 1)),
          assignedTo: 'Nutritionist Kavya',
          notes: 'Review meal plan and blood glucose logs',
        ),
      ]);

      // Infant actions
      actions.addAll([
        PreventiveActionModel(
          id: 'PA006',
          actionType: 'infant_monitoring',
          actionName: 'Respiratory Check',
          cohortType: 'infant_toddler',
          patientName: 'Baby Arjun',
          patientId: 'PAT020',
          status: 'scheduled',
          scheduledFor: now.add(Duration(hours: 6)),
          assignedTo: 'Pediatric Nurse Meera',
          notes: 'Monitor breathing pattern and oxygen saturation',
        ),
        PreventiveActionModel(
          id: 'PA007',
          actionType: 'caregiver_visit',
          actionName: 'Feeding Support',
          cohortType: 'infant_toddler',
          patientName: 'Baby Diya',
          patientId: 'PAT021',
          status: 'completed',
          scheduledFor: now.subtract(Duration(hours: 5)),
          assignedTo: 'Nurse Sunita',
          notes: 'Breastfeeding technique guidance',
          completedAt: now.subtract(Duration(hours: 4)),
        ),
      ]);

      // Accident recovery actions
      actions.addAll([
        PreventiveActionModel(
          id: 'PA008',
          actionType: 'pain_management',
          actionName: 'Pain Protocol Review',
          cohortType: 'accident_recovery',
          patientName: 'Rajesh Verma',
          patientId: 'PAT030',
          status: 'in_progress',
          scheduledFor: now.subtract(Duration(minutes: 30)),
          assignedTo: 'Dr. Kumar',
          notes: 'Adjust pain medication dosage',
        ),
        PreventiveActionModel(
          id: 'PA009',
          actionType: 'physiotherapy',
          actionName: 'Mobility Rehabilitation',
          cohortType: 'accident_recovery',
          patientName: 'Amit Kulkarni',
          patientId: 'PAT031',
          status: 'scheduled',
          scheduledFor: now.add(Duration(hours: 3)),
          assignedTo: 'Physio Kumar',
          notes: 'Range of motion exercises and strength training',
        ),
      ]);

      // Terminal illness actions
      actions.addAll([
        PreventiveActionModel(
          id: 'PA010',
          actionType: 'pain_management',
          actionName: 'Palliative Pain Control',
          cohortType: 'terminal_illness',
          patientName: 'Mohan Das',
          patientId: 'PAT040',
          status: 'in_progress',
          scheduledFor: now.subtract(Duration(minutes: 15)),
          assignedTo: 'Dr. Patel',
          notes: 'Breakthrough pain protocol adjustment',
        ),
        PreventiveActionModel(
          id: 'PA011',
          actionType: 'mental_health_support',
          actionName: 'Family Counseling',
          cohortType: 'terminal_illness',
          patientName: 'Shanti Bai',
          patientId: 'PAT041',
          status: 'scheduled',
          scheduledFor: now.add(Duration(days: 1)),
          assignedTo: 'Counselor Riya',
          notes: 'Support for family caregivers',
        ),
      ]);

      // Filter by cohort type if specified
      if (cohortType != null) {
        actions.retainWhere((action) => action.cohortType == cohortType);
      }

      Logger.info(
        'Fetched ${actions.length} preventive actions',
        tag: 'SafetyMonitorDatasource',
      );
      return actions;
    } catch (e) {
      Logger.error(
        'Error fetching preventive actions',
        tag: 'SafetyMonitorDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
