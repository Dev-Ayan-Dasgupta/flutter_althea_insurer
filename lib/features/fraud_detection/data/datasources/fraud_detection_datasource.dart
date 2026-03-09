import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/fraud_alert_model.dart';
import '../models/claim_verification_model.dart';
import '../models/fraud_pattern_model.dart';
import '../models/investigation_case_model.dart';

class FraudDetectionDatasource {
  final Random _random = Random();

  final List<String> _patientNames = [
    'Rajesh Kumar',
    'Priya Sharma',
    'Amit Patel',
    'Sunita Reddy',
    'Mohan Das',
    'Kavita Iyer',
    'Suresh Gupta',
    'Meera Nair',
  ];

  final List<String> _providerNames = [
    'Apollo Hospitals',
    'Fortis Healthcare',
    'Max Healthcare',
    'Manipal Hospitals',
    'Columbia Asia',
    'Narayana Health',
  ];

  // Fetch fraud alerts
  Future<List<FraudAlertModel>> fetchFraudAlerts() async {
    try {
      Logger.info('Fetching fraud alerts', tag: 'FraudDetectionDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final now = DateTime.now();
      final alerts = <FraudAlertModel>[
        FraudAlertModel(
          id: 'FA001',
          fraudType: 'duplicate_claim',
          severity: 'critical',
          status: 'pending',
          claimId: 'CLM2024001234',
          patientName: 'Rajesh Kumar',
          providerId: 'PROV001',
          providerName: 'Apollo Hospitals - Bangalore',
          claimAmount: 85000,
          fraudProbability: 0.92,
          riskScore: 95,
          detectionReason:
              'Duplicate claim detected: Same procedure billed twice within 24 hours',
          anomalies: [
            'Identical procedure codes',
            'Same provider, same patient',
            'Claims submitted within 24 hours',
            'Amounts match exactly',
          ],
          detectedAt: now.subtract(Duration(hours: 2)),
          investigatorAssigned: null,
          investigationStarted: null,
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA002',
          fraudType: 'inflated_billing',
          severity: 'high',
          status: 'investigating',
          claimId: 'CLM2024001456',
          patientName: 'Priya Sharma',
          providerId: 'PROV002',
          providerName: 'Fortis Healthcare - Delhi',
          claimAmount: 125000,
          fraudProbability: 0.85,
          riskScore: 88,
          detectionReason:
              'Claim amount 300% higher than regional average for same procedure',
          anomalies: [
            'Amount exceeds regional benchmark by 300%',
            'Procedure typically costs ₹40,000',
            'No complication codes to justify higher cost',
            'Provider has 5 similar alerts this month',
          ],
          detectedAt: now.subtract(Duration(hours: 6)),
          investigatorAssigned: 'Investigator Ravi Kumar',
          investigationStarted: now.subtract(Duration(hours: 4)),
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA003',
          fraudType: 'service_mismatch',
          severity: 'high',
          status: 'pending',
          claimId: 'CLM2024001567',
          patientName: 'Amit Patel',
          providerId: 'PROV003',
          providerName: 'Max Healthcare - Mumbai',
          claimAmount: 95000,
          fraudProbability: 0.78,
          riskScore: 82,
          detectionReason:
              'Services billed do not match patient medical records',
          anomalies: [
            'Cardiac procedure claimed for orthopedic patient',
            'Patient records show knee surgery, not heart surgery',
            'Specialist mismatch: Orthopedic vs Cardiologist',
            'CPT codes inconsistent with diagnosis',
          ],
          detectedAt: now.subtract(Duration(hours: 8)),
          investigatorAssigned: null,
          investigationStarted: null,
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA004',
          fraudType: 'identity_fraud',
          severity: 'critical',
          status: 'investigating',
          claimId: 'CLM2024001678',
          patientName: 'Sunita Reddy',
          providerId: 'PROV004',
          providerName: 'Manipal Hospitals - Bangalore',
          claimAmount: 150000,
          fraudProbability: 0.88,
          riskScore: 91,
          detectionReason:
              'Patient identity verification failed - biometric mismatch',
          anomalies: [
            'Biometric verification failed',
            'Patient claims to have never visited hospital',
            'Insurance card reported stolen 2 weeks ago',
            'IP address from different state during claim submission',
          ],
          detectedAt: now.subtract(Duration(hours: 12)),
          investigatorAssigned: 'Investigator Meera Singh',
          investigationStarted: now.subtract(Duration(hours: 10)),
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA005',
          fraudType: 'unnecessary_services',
          severity: 'medium',
          status: 'pending',
          claimId: 'CLM2024001789',
          patientName: 'Mohan Das',
          providerId: 'PROV002',
          providerName: 'Fortis Healthcare - Delhi',
          claimAmount: 65000,
          fraudProbability: 0.72,
          riskScore: 75,
          detectionReason: 'Multiple unnecessary diagnostic tests ordered',
          anomalies: [
            '15 diagnostic tests ordered in one visit',
            'Tests not medically necessary per guidelines',
            'Provider has pattern of over-testing',
            'Similar cases flagged from same provider',
          ],
          detectedAt: now.subtract(Duration(days: 1)),
          investigatorAssigned: null,
          investigationStarted: null,
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA006',
          fraudType: 'location_anomaly',
          severity: 'medium',
          status: 'dismissed',
          claimId: 'CLM2024001890',
          patientName: 'Kavita Iyer',
          providerId: 'PROV005',
          providerName: 'Columbia Asia - Chennai',
          claimAmount: 45000,
          fraudProbability: 0.65,
          riskScore: 68,
          detectionReason:
              'Patient treated in two different cities on same day',
          anomalies: [
            'Morning treatment in Chennai',
            'Evening treatment in Bangalore (350km away)',
            'Timestamps 8 hours apart',
            'Both claims submitted same day',
          ],
          detectedAt: now.subtract(Duration(days: 2)),
          investigatorAssigned: 'Investigator Suresh Rao',
          investigationStarted: now.subtract(Duration(days: 2)),
          resolutionNotes:
              'Patient confirmed legitimate emergency transfer. Claims verified with hospital records.',
        ),
        FraudAlertModel(
          id: 'FA007',
          fraudType: 'provider_collusion',
          severity: 'critical',
          status: 'investigating',
          claimId: 'CLM2024001901',
          patientName: 'Suresh Gupta',
          providerId: 'PROV006',
          providerName: 'Narayana Health - Kolkata',
          claimAmount: 180000,
          fraudProbability: 0.89,
          riskScore: 93,
          detectionReason:
              'Pattern of collusion detected between provider and patient',
          anomalies: [
            'Patient and provider share bank account',
            'Multiple high-value claims in short period',
            'Procedures not supported by medical necessity',
            'Network analysis shows suspicious relationship',
          ],
          detectedAt: now.subtract(Duration(hours: 18)),
          investigatorAssigned: 'Senior Investigator Anil Kapoor',
          investigationStarted: now.subtract(Duration(hours: 16)),
          resolutionNotes: null,
        ),
        FraudAlertModel(
          id: 'FA008',
          fraudType: 'billing_manipulation',
          severity: 'high',
          status: 'confirmed',
          claimId: 'CLM2024001912',
          patientName: 'Meera Nair',
          providerId: 'PROV001',
          providerName: 'Apollo Hospitals - Bangalore',
          claimAmount: 110000,
          fraudProbability: 0.94,
          riskScore: 96,
          detectionReason:
              'Upcoding detected - billing for more expensive procedures than performed',
          anomalies: [
            'Procedure code mismatch',
            'Billed for complex surgery, performed simple procedure',
            'Medical records do not support billed codes',
            'Provider has history of upcoding',
          ],
          detectedAt: now.subtract(Duration(days: 3)),
          investigatorAssigned: 'Investigator Priya Desai',
          investigationStarted: now.subtract(Duration(days: 3)),
          resolutionNotes:
              'Fraud confirmed. Claim rejected. Provider flagged for audit. ₹110,000 saved.',
        ),
      ];

      Logger.info(
        'Fetched ${alerts.length} fraud alerts',
        tag: 'FraudDetectionDatasource',
      );
      return alerts;
    } catch (e) {
      Logger.error(
        'Error fetching fraud alerts',
        tag: 'FraudDetectionDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch claim verifications
  Future<List<ClaimVerificationModel>> fetchClaimVerifications() async {
    try {
      Logger.info(
        'Fetching claim verifications',
        tag: 'FraudDetectionDatasource',
      );

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final verifications = <ClaimVerificationModel>[
        ClaimVerificationModel(
          id: 'CV001',
          claimId: 'CLM2024002001',
          patientName: 'Rajesh Kumar',
          providerName: 'Apollo Hospitals - Chennai',
          claimAmount: 75000,
          claimDate: now.subtract(Duration(days: 2)),
          status: 'in_progress',
          checksCompleted: [
            'document_verification',
            'patient_validation',
            'provider_validation',
          ],
          checksPending: [
            'service_validation',
            'price_validation',
            'medical_necessity',
          ],
          totalChecks: 6,
          passedChecks: 3,
          failedChecks: 0,
          verificationScore: 72.5,
          redFlags: [
            'Price slightly above benchmark',
            'New provider - limited history',
          ],
          verifiedDocuments: [
            'Insurance card',
            'Medical prescription',
            'Hospital admission record',
          ],
          assignedVerifier: 'Verifier Anita Rao',
          completedAt: null,
          recommendation: null,
        ),
        ClaimVerificationModel(
          id: 'CV002',
          claimId: 'CLM2024002012',
          patientName: 'Priya Sharma',
          providerName: 'Fortis Healthcare - Mumbai',
          claimAmount: 125000,
          claimDate: now.subtract(Duration(days: 5)),
          status: 'needs_more_info',
          checksCompleted: ['document_verification', 'patient_validation'],
          checksPending: [
            'service_validation',
            'price_validation',
            'provider_validation',
            'medical_necessity',
          ],
          totalChecks: 6,
          passedChecks: 2,
          failedChecks: 0,
          verificationScore: 45.0,
          redFlags: [
            'Missing surgical notes',
            'Incomplete discharge summary',
            'Price validation pending',
          ],
          verifiedDocuments: ['Insurance card'],
          assignedVerifier: 'Verifier Suresh Kumar',
          completedAt: null,
          recommendation: 'Request additional documentation from provider',
        ),
        ClaimVerificationModel(
          id: 'CV003',
          claimId: 'CLM2024002023',
          patientName: 'Amit Patel',
          providerName: 'Max Healthcare - Delhi',
          claimAmount: 95000,
          claimDate: now.subtract(Duration(days: 7)),
          status: 'verified',
          checksCompleted: [
            'document_verification',
            'service_validation',
            'price_validation',
            'provider_validation',
            'patient_validation',
            'medical_necessity',
          ],
          checksPending: [],
          totalChecks: 6,
          passedChecks: 6,
          failedChecks: 0,
          verificationScore: 98.5,
          redFlags: [],
          verifiedDocuments: [
            'Insurance card',
            'Medical prescription',
            'Hospital admission record',
            'Discharge summary',
            'Surgical notes',
            'Lab reports',
          ],
          assignedVerifier: 'Senior Verifier Rajiv Menon',
          completedAt: now.subtract(Duration(days: 1)),
          recommendation: 'APPROVE - All checks passed. Claim is legitimate.',
        ),
        ClaimVerificationModel(
          id: 'CV004',
          claimId: 'CLM2024002034',
          patientName: 'Sunita Reddy',
          providerName: 'Manipal Hospitals - Bangalore',
          claimAmount: 150000,
          claimDate: now.subtract(Duration(days: 3)),
          status: 'rejected',
          checksCompleted: [
            'document_verification',
            'service_validation',
            'price_validation',
            'provider_validation',
            'patient_validation',
            'medical_necessity',
          ],
          checksPending: [],
          totalChecks: 6,
          passedChecks: 3,
          failedChecks: 3,
          verificationScore: 28.5,
          redFlags: [
            'Medical necessity not established',
            'Procedure not covered under policy',
            'Documentation inconsistencies',
            'Price significantly inflated',
          ],
          verifiedDocuments: ['Insurance card', 'Medical prescription'],
          assignedVerifier: 'Senior Verifier Kavita Iyer',
          completedAt: now.subtract(Duration(hours: 12)),
          recommendation:
              'REJECT - Multiple verification failures. Medical necessity not established.',
        ),
        ClaimVerificationModel(
          id: 'CV005',
          claimId: 'CLM2024002045',
          patientName: 'Mohan Das',
          providerName: 'Columbia Asia - Chennai',
          claimAmount: 65000,
          claimDate: now.subtract(Duration(days: 1)),
          status: 'pending',
          checksCompleted: [],
          checksPending: [
            'document_verification',
            'service_validation',
            'price_validation',
            'provider_validation',
            'patient_validation',
            'medical_necessity',
          ],
          totalChecks: 6,
          passedChecks: 0,
          failedChecks: 0,
          verificationScore: 0.0,
          redFlags: [],
          verifiedDocuments: [],
          assignedVerifier: null,
          completedAt: null,
          recommendation: null,
        ),
      ];

      Logger.info(
        'Fetched ${verifications.length} claim verifications',
        tag: 'FraudDetectionDatasource',
      );
      return verifications;
    } catch (e) {
      Logger.error(
        'Error fetching claim verifications',
        tag: 'FraudDetectionDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch fraud patterns
  Future<List<FraudPatternModel>> fetchFraudPatterns() async {
    try {
      Logger.info('Fetching fraud patterns', tag: 'FraudDetectionDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final patterns = <FraudPatternModel>[
        FraudPatternModel(
          id: 'FP001',
          patternType: 'billing',
          patternName: 'Upcoding Pattern',
          description:
              'Providers consistently billing for more expensive procedures than performed',
          occurrences: 47,
          detectionRate: 0.89,
          falsePositiveRate: 0.08,
          estimatedLoss: 5200000,
          preventedLoss: 4100000,
          affectedProviders: [
            'Apollo Hospitals - Bangalore',
            'Fortis Healthcare - Delhi',
            'Max Healthcare - Mumbai',
          ],
          commonIndicators: [
            'Procedure code mismatch',
            'Medical records don\'t support billed codes',
            'Consistent pattern across multiple claims',
            'Higher reimbursement sought',
          ],
          firstDetected: now.subtract(Duration(days: 180)),
          lastDetected: now.subtract(Duration(days: 3)),
          isActive: true,
        ),
        FraudPatternModel(
          id: 'FP002',
          patternType: 'timing',
          patternName: 'Claim Splitting',
          description:
              'Single procedure split into multiple claims to exceed policy limits',
          occurrences: 32,
          detectionRate: 0.92,
          falsePositiveRate: 0.05,
          estimatedLoss: 3800000,
          preventedLoss: 2950000,
          affectedProviders: [
            'Manipal Hospitals - Bangalore',
            'Narayana Health - Kolkata',
          ],
          commonIndicators: [
            'Multiple claims for related procedures',
            'Claims submitted days apart',
            'Total exceeds policy limit',
            'Same patient, same condition',
          ],
          firstDetected: now.subtract(Duration(days: 120)),
          lastDetected: now.subtract(Duration(days: 7)),
          isActive: true,
        ),
        FraudPatternModel(
          id: 'FP003',
          patternType: 'geographic',
          patternName: 'Impossible Service Locations',
          description:
              'Patient claims services from multiple distant locations simultaneously',
          occurrences: 18,
          detectionRate: 0.95,
          falsePositiveRate: 0.12,
          estimatedLoss: 1500000,
          preventedLoss: 1200000,
          affectedProviders: [
            'Columbia Asia - Chennai',
            'Apollo Hospitals - Hyderabad',
          ],
          commonIndicators: [
            'Geographic impossibility',
            'Timestamps conflict',
            'Multiple cities same day',
            'Travel time insufficient',
          ],
          firstDetected: now.subtract(Duration(days: 90)),
          lastDetected: now.subtract(Duration(days: 2)),
          isActive: true,
        ),
        FraudPatternModel(
          id: 'FP004',
          patternType: 'provider',
          patternName: 'Phantom Billing',
          description:
              'Billing for services never rendered or patients never treated',
          occurrences: 12,
          detectionRate: 0.88,
          falsePositiveRate: 0.03,
          estimatedLoss: 4500000,
          preventedLoss: 3800000,
          affectedProviders: ['Fortis Healthcare - Delhi'],
          commonIndicators: [
            'Patient denies receiving service',
            'No hospital admission records',
            'Provider unable to produce documentation',
            'Biometric verification fails',
          ],
          firstDetected: now.subtract(Duration(days: 60)),
          lastDetected: now.subtract(Duration(days: 12)),
          isActive: true,
        ),
        FraudPatternModel(
          id: 'FP005',
          patternType: 'patient',
          patternName: 'Identity Theft Ring',
          description:
              'Organized group using stolen identities to submit fraudulent claims',
          occurrences: 8,
          detectionRate: 0.91,
          falsePositiveRate: 0.02,
          estimatedLoss: 6200000,
          preventedLoss: 5100000,
          affectedProviders: ['Multiple providers'],
          commonIndicators: [
            'Stolen insurance cards',
            'Biometric mismatches',
            'IP address anomalies',
            'Network connections between claims',
          ],
          firstDetected: now.subtract(Duration(days: 45)),
          lastDetected: now.subtract(Duration(days: 18)),
          isActive: true,
        ),
      ];

      Logger.info(
        'Fetched ${patterns.length} fraud patterns',
        tag: 'FraudDetectionDatasource',
      );
      return patterns;
    } catch (e) {
      Logger.error(
        'Error fetching fraud patterns',
        tag: 'FraudDetectionDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch investigation cases
  Future<List<InvestigationCaseModel>> fetchInvestigationCases() async {
    try {
      Logger.info(
        'Fetching investigation cases',
        tag: 'FraudDetectionDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final cases = <InvestigationCaseModel>[
        InvestigationCaseModel(
          id: 'IC001',
          caseNumber: 'CASE-2024-001',
          title: 'Systematic Upcoding - Apollo Bangalore',
          status: 'investigating',
          priority: 'high',
          outcome: 'pending',
          claimIds: [
            'CLM2024001912',
            'CLM2024001823',
            'CLM2024001734',
            'CLM2024001645',
          ],
          primarySuspect: 'Apollo Hospitals - Bangalore',
          suspectType: 'Provider',
          totalAmountInvolved: 425000,
          recoveredAmount: 110000,
          relatedClaims: 4,
          openedAt: now.subtract(Duration(days: 15)),
          closedAt: null,
          investigator: 'Senior Investigator Anil Kapoor',
          evidenceCollected: [
            'Medical records analysis',
            'Procedure code comparison',
            'Provider billing history',
            'Expert medical opinion',
          ],
          findings: [
            'Pattern of consistent upcoding',
            'Medical records do not support billed procedures',
            '15 similar cases identified',
            'Estimated fraud: ₹4.25 lakhs',
          ],
          actionTaken: null,
        ),
        InvestigationCaseModel(
          id: 'IC002',
          caseNumber: 'CASE-2024-002',
          title: 'Identity Theft Ring - Multiple Providers',
          status: 'evidence_gathering',
          priority: 'urgent',
          outcome: 'pending',
          claimIds: ['CLM2024001678', 'CLM2024001589', 'CLM2024001490'],
          primarySuspect: 'Organized Crime Group',
          suspectType: 'Patient Group',
          totalAmountInvolved: 550000,
          recoveredAmount: 0,
          relatedClaims: 8,
          openedAt: now.subtract(Duration(days: 20)),
          closedAt: null,
          investigator: 'Special Task Force - Meera Singh',
          evidenceCollected: [
            'Stolen insurance cards',
            'Biometric data mismatches',
            'Network analysis',
            'Bank account linkages',
            'IP address logs',
          ],
          findings: [
            'Organized identity theft ring',
            '12 stolen identities used',
            'Multiple providers involved',
            'Network connections established',
          ],
          actionTaken: null,
        ),
        InvestigationCaseModel(
          id: 'IC003',
          caseNumber: 'CASE-2024-003',
          title: 'Provider-Patient Collusion - Narayana Health',
          status: 'under_review',
          priority: 'high',
          outcome: 'confirmed',
          claimIds: ['CLM2024001901', 'CLM2024001812'],
          primarySuspect: 'Dr. Suresh Gupta & Narayana Health Staff',
          suspectType: 'Provider-Patient',
          totalAmountInvolved: 320000,
          recoveredAmount: 180000,
          relatedClaims: 2,
          openedAt: now.subtract(Duration(days: 25)),
          closedAt: null,
          investigator: 'Senior Investigator Ravi Kumar',
          evidenceCollected: [
            'Bank account analysis',
            'Financial transaction records',
            'Provider-patient communications',
            'Medical necessity review',
          ],
          findings: [
            'Shared bank accounts discovered',
            'Collusion confirmed',
            'Unnecessary procedures performed',
            'Financial kickback scheme identified',
          ],
          actionTaken: 'Case submitted to legal team. Provider suspended.',
        ),
        InvestigationCaseModel(
          id: 'IC004',
          caseNumber: 'CASE-2023-087',
          title: 'Duplicate Billing Scheme - Fortis Delhi',
          status: 'closed',
          priority: 'medium',
          outcome: 'confirmed',
          claimIds: ['CLM2023012345', 'CLM2023012346'],
          primarySuspect: 'Fortis Healthcare - Delhi Billing Dept',
          suspectType: 'Provider',
          totalAmountInvolved: 170000,
          recoveredAmount: 170000,
          relatedClaims: 2,
          openedAt: now.subtract(Duration(days: 60)),
          closedAt: now.subtract(Duration(days: 10)),
          investigator: 'Investigator Priya Desai',
          evidenceCollected: [
            'Duplicate claim records',
            'System audit logs',
            'Provider submission timestamps',
            'Payment processing records',
          ],
          findings: [
            'Systematic duplicate billing',
            'Software glitch exploited',
            'Internal controls inadequate',
            'Full amount recovered',
          ],
          actionTaken:
              'Fraud confirmed. Full recovery achieved. Provider fined ₹50,000. Process improvements mandated.',
        ),
        InvestigationCaseModel(
          id: 'IC005',
          caseNumber: 'CASE-2024-004',
          title: 'Unnecessary Services - Multiple Providers',
          status: 'open',
          priority: 'medium',
          outcome: 'pending',
          claimIds: ['CLM2024001789'],
          primarySuspect: 'Various Diagnostic Centers',
          suspectType: 'Provider',
          totalAmountInvolved: 285000,
          recoveredAmount: 0,
          relatedClaims: 7,
          openedAt: now.subtract(Duration(days: 8)),
          closedAt: null,
          investigator: 'Investigator Suresh Rao',
          evidenceCollected: [
            'Medical necessity review',
            'Provider billing patterns',
          ],
          findings: [
            'Pattern of over-testing',
            'Multiple unnecessary diagnostics',
          ],
          actionTaken: null,
        ),
      ];

      Logger.info(
        'Fetched ${cases.length} investigation cases',
        tag: 'FraudDetectionDatasource',
      );
      return cases;
    } catch (e) {
      Logger.error(
        'Error fetching investigation cases',
        tag: 'FraudDetectionDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
