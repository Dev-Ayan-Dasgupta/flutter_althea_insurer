import '../../../../core/utils/logger.dart';
import '../models/live_alert_model.dart';
import '../models/alert_action_model.dart';

class LiveAlertsDatasource {
  // Fetch live alerts
  Future<List<LiveAlertModel>> fetchLiveAlerts() async {
    try {
      Logger.info('Fetching live alerts', tag: 'LiveAlertsDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final alerts = <LiveAlertModel>[
        // Emergency Alerts
        LiveAlertModel(
          id: 'LA001',
          category: 'emergency',
          priority: 'emergency',
          status: 'active',
          title: 'Cardiac Arrest - Immediate Response Required',
          description:
              'Patient Rajesh Kumar (72M) showing cardiac distress symptoms. IoT vitals: HR 145, BP 180/110, SpO2 88%',
          source: 'Emergency Triage System',
          triggeredAt: now.subtract(Duration(minutes: 3)),
          acknowledgedAt: null,
          resolvedAt: null,
          patientId: 'PAT001',
          patientName: 'Rajesh Kumar',
          providerId: null,
          providerName: null,
          location: 'Koramangala, Bangalore',
          tags: ['cardiac', 'critical-vitals', 'oxygen-low'],
          metadata: {
            'heartRate': 145,
            'bloodPressure': '180/110',
            'spo2': 88,
            'riskScore': 96,
          },
          assignedTo: 'Emergency Team Alpha',
          actionTaken: null,
          escalationLevel: 3,
          requiresImmediateAction: true,
        ),
        LiveAlertModel(
          id: 'LA002',
          category: 'emergency',
          priority: 'critical',
          status: 'in_progress',
          title: 'Severe Fall Detected - Elderly Patient',
          description:
              'Lakshmi Devi (78F) fall detected by wearable sensor. No movement for 5 minutes. Emergency contact unreachable.',
          source: 'Safety Monitor - Fall Detection',
          triggeredAt: now.subtract(Duration(minutes: 8)),
          acknowledgedAt: now.subtract(Duration(minutes: 7)),
          resolvedAt: null,
          patientId: 'PAT002',
          patientName: 'Lakshmi Devi',
          providerId: null,
          providerName: null,
          location: 'Indiranagar, Bangalore',
          tags: ['fall', 'elderly', 'unresponsive'],
          metadata: {
            'fallImpact': 'High',
            'inactivityMinutes': 5,
            'lastVitals': '2 hours ago',
          },
          assignedTo: 'Paramedic Unit 2',
          actionTaken: 'Ambulance dispatched, ETA 6 minutes',
          escalationLevel: 2,
          requiresImmediateAction: true,
        ),

        // Fraud Alerts
        LiveAlertModel(
          id: 'LA003',
          category: 'fraud',
          priority: 'critical',
          status: 'active',
          title: 'Duplicate Claim Detected - High Fraud Probability',
          description:
              'Apollo Hospitals submitted duplicate claim for same procedure (₹85,000) within 24 hours. 92% fraud probability.',
          source: 'Fraud Detection Console',
          triggeredAt: now.subtract(Duration(minutes: 15)),
          acknowledgedAt: null,
          resolvedAt: null,
          patientId: 'PAT003',
          patientName: 'Amit Patel',
          providerId: 'PROV001',
          providerName: 'Apollo Hospitals - Bangalore',
          location: null,
          tags: ['duplicate-claim', 'high-value', 'fraud-ring'],
          metadata: {
            'claimAmount': 85000,
            'fraudProbability': 0.92,
            'claimId': 'CLM2024001234',
          },
          assignedTo: null,
          actionTaken: null,
          escalationLevel: 1,
          requiresImmediateAction: true,
        ),
        LiveAlertModel(
          id: 'LA004',
          category: 'fraud',
          priority: 'high',
          status: 'acknowledged',
          title: 'Identity Fraud - Biometric Mismatch',
          description:
              'Patient identity verification failed. Biometric mismatch detected. Insurance card reported stolen 2 weeks ago.',
          source: 'Fraud Detection Console',
          triggeredAt: now.subtract(Duration(minutes: 25)),
          acknowledgedAt: now.subtract(Duration(minutes: 20)),
          resolvedAt: null,
          patientId: 'PAT004',
          patientName: 'Sunita Reddy',
          providerId: 'PROV004',
          providerName: 'Manipal Hospitals',
          location: null,
          tags: ['identity-theft', 'biometric-fail', 'stolen-card'],
          metadata: {'claimAmount': 150000, 'fraudProbability': 0.88},
          assignedTo: 'Fraud Investigator Meera',
          actionTaken: null,
          escalationLevel: 1,
          requiresImmediateAction: false,
        ),

        // Safety Alerts
        LiveAlertModel(
          id: 'LA005',
          category: 'safety',
          priority: 'high',
          status: 'active',
          title: 'Maternal Complication - Blood Pressure Spike',
          description:
              'Priya Mehta (38F) BP reading 160/110 mmHg. Risk of preeclampsia. Requires immediate medical attention.',
          source: 'Safety Monitor - Maternal Care',
          triggeredAt: now.subtract(Duration(minutes: 12)),
          acknowledgedAt: null,
          resolvedAt: null,
          patientId: 'PAT005',
          patientName: 'Priya Mehta',
          providerId: null,
          providerName: null,
          location: 'Whitefield, Bangalore',
          tags: ['pregnancy', 'hypertension', 'preeclampsia-risk'],
          metadata: {
            'bloodPressure': '160/110',
            'gestationalWeek': 32,
            'riskScore': 85,
          },
          assignedTo: null,
          actionTaken: null,
          escalationLevel: 2,
          requiresImmediateAction: true,
        ),
        LiveAlertModel(
          id: 'LA006',
          category: 'safety',
          priority: 'medium',
          status: 'in_progress',
          title: 'Infant Respiratory Distress',
          description:
              'Baby Arjun (4 months) irregular breathing pattern. Respiratory rate: 65 breaths/min (normal: 30-40).',
          source: 'Safety Monitor - Infant Care',
          triggeredAt: now.subtract(Duration(minutes: 35)),
          acknowledgedAt: now.subtract(Duration(minutes: 30)),
          resolvedAt: null,
          patientId: 'PAT006',
          patientName: 'Baby Arjun',
          providerId: null,
          providerName: null,
          location: 'Jayanagar, Bangalore',
          tags: ['infant', 'respiratory', 'premature-birth'],
          metadata: {
            'respiratoryRate': 65,
            'age': '4 months',
            'birthWeight': '1.8kg',
          },
          assignedTo: 'Pediatric Nurse Meera',
          actionTaken: 'Nurse visit scheduled in 30 minutes',
          escalationLevel: 1,
          requiresImmediateAction: false,
        ),

        // Medication Alerts
        LiveAlertModel(
          id: 'LA007',
          category: 'medication',
          priority: 'high',
          status: 'active',
          title: 'Critical Medication Non-Adherence',
          description:
              'Mohan Das (68M) missed 4 consecutive insulin doses. Diabetes patient with 45% adherence rate.',
          source: 'Medication Adherence Dashboard',
          triggeredAt: now.subtract(Duration(minutes: 45)),
          acknowledgedAt: null,
          resolvedAt: null,
          patientId: 'PAT007',
          patientName: 'Mohan Das',
          providerId: null,
          providerName: null,
          location: 'Malleshwaram, Bangalore',
          tags: ['medication', 'diabetes', 'non-adherence'],
          metadata: {
            'consecutiveMissed': 4,
            'adherenceRate': 0.45,
            'medication': 'Insulin',
          },
          assignedTo: null,
          actionTaken: null,
          escalationLevel: 1,
          requiresImmediateAction: true,
        ),
        LiveAlertModel(
          id: 'LA008',
          category: 'medication',
          priority: 'medium',
          status: 'acknowledged',
          title: 'Medication Refill Overdue',
          description:
              'Kavita Iyer (55F) cardiac medication refill overdue by 3 days. Last dose taken 2 days ago.',
          source: 'Medication Adherence Dashboard',
          triggeredAt: now.subtract(Duration(hours: 2)),
          acknowledgedAt: now.subtract(Duration(hours: 1)),
          resolvedAt: null,
          patientId: 'PAT008',
          patientName: 'Kavita Iyer',
          providerId: null,
          providerName: null,
          location: 'HSR Layout, Bangalore',
          tags: ['medication', 'refill', 'cardiac'],
          metadata: {'overdueBy': 3, 'medication': 'Atorvastatin'},
          assignedTo: 'Pharmacist Kumar',
          actionTaken: null,
          escalationLevel: 0,
          requiresImmediateAction: false,
        ),

        // Risk Escalation Alerts
        LiveAlertModel(
          id: 'LA009',
          category: 'risk_escalation',
          priority: 'high',
          status: 'active',
          title: 'Chronic Disease Deterioration',
          description:
              'Suresh Gupta (65M) HbA1c increased from 7.2 to 9.5. Blood glucose consistently above 250 mg/dL.',
          source: 'Risk Engine - Chronic Disease Monitor',
          triggeredAt: now.subtract(Duration(hours: 1)),
          acknowledgedAt: null,
          resolvedAt: null,
          patientId: 'PAT009',
          patientName: 'Suresh Gupta',
          providerId: null,
          providerName: null,
          location: 'Banashankari, Bangalore',
          tags: ['diabetes', 'deterioration', 'high-risk'],
          metadata: {'hba1c': 9.5, 'previousHba1c': 7.2, 'avgGlucose': 265},
          assignedTo: null,
          actionTaken: null,
          escalationLevel: 1,
          requiresImmediateAction: false,
        ),
        LiveAlertModel(
          id: 'LA010',
          category: 'risk_escalation',
          priority: 'critical',
          status: 'in_progress',
          title: 'Hospitalization Risk - Multiple Red Flags',
          description:
              'Meera Nair (70F) showing 5 hospitalization risk indicators. Predicted 85% hospitalization probability within 7 days.',
          source: 'Risk Engine - Predictive Analytics',
          triggeredAt: now.subtract(Duration(hours: 3)),
          acknowledgedAt: now.subtract(Duration(hours: 2, minutes: 30)),
          resolvedAt: null,
          patientId: 'PAT010',
          patientName: 'Meera Nair',
          providerId: null,
          providerName: null,
          location: 'RT Nagar, Bangalore',
          tags: ['hospitalization-risk', 'copd', 'multiple-conditions'],
          metadata: {
            'riskScore': 88,
            'hospitalizationProb': 0.85,
            'redFlags': 5,
          },
          assignedTo: 'Case Manager Anita',
          actionTaken: 'Home visit scheduled for tomorrow',
          escalationLevel: 2,
          requiresImmediateAction: true,
        ),

        // System Alerts
        LiveAlertModel(
          id: 'LA011',
          category: 'system_alert',
          priority: 'medium',
          status: 'acknowledged',
          title: 'Network Provider Capacity Critical',
          description:
              'Apollo Hospitals - Bangalore at 95% capacity. No ICU beds available. Diverting emergency cases.',
          source: 'Network Readiness Monitor',
          triggeredAt: now.subtract(Duration(hours: 4)),
          acknowledgedAt: now.subtract(Duration(hours: 3, minutes: 45)),
          resolvedAt: null,
          patientId: null,
          patientName: null,
          providerId: 'PROV001',
          providerName: 'Apollo Hospitals - Bangalore',
          location: 'Bangalore',
          tags: ['capacity', 'icu', 'diversion'],
          metadata: {'capacity': 0.95, 'icuBeds': 0, 'generalBeds': 5},
          assignedTo: 'Network Coordinator',
          actionTaken: 'Alternative hospitals identified',
          escalationLevel: 0,
          requiresImmediateAction: false,
        ),
        LiveAlertModel(
          id: 'LA012',
          category: 'system_alert',
          priority: 'low',
          status: 'resolved',
          title: 'IoT Device Battery Low',
          description:
              'Wearable device for patient PAT003 showing 15% battery. Requires charging within 24 hours.',
          source: 'IoT Device Management',
          triggeredAt: now.subtract(Duration(hours: 6)),
          acknowledgedAt: now.subtract(Duration(hours: 5)),
          resolvedAt: now.subtract(Duration(hours: 2)),
          patientId: 'PAT003',
          patientName: 'Amit Patel',
          providerId: null,
          providerName: null,
          location: 'Electronic City, Bangalore',
          tags: ['iot', 'battery', 'maintenance'],
          metadata: {'batteryLevel': 15, 'deviceType': 'Wearable Sensor'},
          assignedTo: 'Tech Support',
          actionTaken: 'Patient notified. Charging scheduled.',
          escalationLevel: 0,
          requiresImmediateAction: false,
        ),
      ];

      Logger.info(
        'Fetched ${alerts.length} live alerts',
        tag: 'LiveAlertsDatasource',
      );
      return alerts;
    } catch (e) {
      Logger.error(
        'Error fetching live alerts',
        tag: 'LiveAlertsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch alert actions
  Future<List<AlertActionModel>> fetchAlertActions(String alertId) async {
    try {
      Logger.info(
        'Fetching actions for alert $alertId',
        tag: 'LiveAlertsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 300));

      final now = DateTime.now();
      final actions = <AlertActionModel>[
        AlertActionModel(
          id: 'ACT001',
          alertId: alertId,
          actionType: 'acknowledge',
          actionName: 'Alert Acknowledged',
          performedAt: now.subtract(Duration(minutes: 5)),
          performedBy: 'Emergency Coordinator Ravi',
          notes: 'Alert received and reviewing',
        ),
        AlertActionModel(
          id: 'ACT002',
          alertId: alertId,
          actionType: 'assign',
          actionName: 'Assigned to Response Team',
          performedAt: now.subtract(Duration(minutes: 3)),
          performedBy: 'Emergency Coordinator Ravi',
          notes: 'Assigned to Emergency Team Alpha',
          actionData: {'team': 'Emergency Team Alpha'},
        ),
      ];

      Logger.info(
        'Fetched ${actions.length} alert actions',
        tag: 'LiveAlertsDatasource',
      );
      return actions;
    } catch (e) {
      Logger.error(
        'Error fetching alert actions',
        tag: 'LiveAlertsDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
