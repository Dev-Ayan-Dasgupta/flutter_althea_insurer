import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/medication_model.dart';
import '../models/adherence_record_model.dart';
import '../models/patient_adherence_model.dart';
import '../models/intervention_model.dart';

class MedicationAdherenceDatasource {
  final Random _random = Random();

  final List<String> _patientNames = [
    'Rajesh Kumar',
    'Priya Sharma',
    'Lakshmi Devi',
    'Amit Patel',
    'Sunita Reddy',
    'Mohan Das',
    'Kavita Iyer',
    'Suresh Gupta',
    'Meera Nair',
    'Vijay Singh',
  ];

  final List<String> _conditions = [
    'Type 2 Diabetes',
    'Hypertension',
    'Coronary Artery Disease',
    'COPD',
    'Chronic Kidney Disease',
  ];

  final List<String> _medications = [
    'Metformin',
    'Glimepiride',
    'Amlodipine',
    'Atenolol',
    'Aspirin',
    'Atorvastatin',
    'Ramipril',
    'Salbutamol',
    'Insulin',
    'Furosemide',
  ];

  // Fetch patient adherence data
  Future<List<PatientAdherenceModel>> fetchPatientAdherence() async {
    try {
      Logger.info(
        'Fetching patient adherence',
        tag: 'MedicationAdherenceDatasource',
      );

      await Future.delayed(Duration(milliseconds: 800));

      final now = DateTime.now();
      final patients = <PatientAdherenceModel>[];

      for (int i = 0; i < 10; i++) {
        final dosesScheduled =
            84 + _random.nextInt(56); // 84-140 doses (2 weeks)
        final dosesTaken = (dosesScheduled * (0.5 + _random.nextDouble() * 0.5))
            .toInt();
        final dosesDelayed = ((dosesScheduled - dosesTaken) * 0.4).toInt();
        final dosesMissed = dosesScheduled - dosesTaken - dosesDelayed;
        final adherenceRate = (dosesTaken / dosesScheduled * 100);

        String adherenceLevel;
        if (adherenceRate >= 90) {
          adherenceLevel = 'excellent';
        } else if (adherenceRate >= 75) {
          adherenceLevel = 'good';
        } else if (adherenceRate >= 50) {
          adherenceLevel = 'fair';
        } else {
          adherenceLevel = 'poor';
        }

        final consecutiveMissed = adherenceRate < 70 ? _random.nextInt(4) : 0;
        final requiresIntervention =
            adherenceRate < 75 || consecutiveMissed >= 2;

        final riskFactors = <String>[];
        if (adherenceRate < 75) riskFactors.add('Low adherence rate');
        if (consecutiveMissed >= 2) riskFactors.add('Consecutive missed doses');
        if (_random.nextBool()) riskFactors.add('Complex medication regimen');
        if (_random.nextBool()) riskFactors.add('Forgetfulness');
        if (_random.nextBool()) riskFactors.add('Side effects concerns');

        patients.add(
          PatientAdherenceModel(
            id: 'PAT${i + 1}'.padLeft(6, '0'),
            patientName: _patientNames[i],
            age: 55 + _random.nextInt(25),
            gender: _random.nextBool() ? 'Male' : 'Female',
            condition: _conditions[_random.nextInt(_conditions.length)],
            totalMedications: 3 + _random.nextInt(5),
            activeMedications: 3 + _random.nextInt(4),
            adherenceRate: adherenceRate,
            adherenceLevel: adherenceLevel,
            dosesScheduled: dosesScheduled,
            dosesTaken: dosesTaken,
            dosesMissed: dosesMissed,
            dosesDelayed: dosesDelayed,
            lastDoseTime: now.subtract(Duration(hours: _random.nextInt(12))),
            nextDoseTime: now.add(Duration(hours: _random.nextInt(8))),
            consecutiveMissedDoses: consecutiveMissed,
            requiresIntervention: requiresIntervention,
            riskFactors: riskFactors,
          ),
        );
      }

      // Sort by adherence rate (worst first)
      patients.sort((a, b) => a.adherenceRate.compareTo(b.adherenceRate));

      Logger.info(
        'Fetched ${patients.length} patient adherence records',
        tag: 'MedicationAdherenceDatasource',
      );
      return patients;
    } catch (e) {
      Logger.error(
        'Error fetching patient adherence',
        tag: 'MedicationAdherenceDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch medications for a patient
  Future<List<MedicationModel>> fetchPatientMedications(
    String patientId,
  ) async {
    try {
      Logger.info(
        'Fetching medications for patient $patientId',
        tag: 'MedicationAdherenceDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final medications = <MedicationModel>[];

      final count = 3 + _random.nextInt(4);
      for (int i = 0; i < count; i++) {
        final medName = _medications[i % _medications.length];
        medications.add(
          MedicationModel(
            id: 'MED${i + 1}',
            name: medName,
            genericName: medName,
            type: [
              'tablet',
              'capsule',
              'syrup',
              'injection',
            ][_random.nextInt(4)],
            dosage: [
              '5mg',
              '10mg',
              '25mg',
              '50mg',
              '100mg',
            ][_random.nextInt(5)],
            frequency: [
              'once_daily',
              'twice_daily',
              'three_times_daily',
            ][_random.nextInt(3)],
            timings: _getTimings(i),
            startDate: now.subtract(Duration(days: 30 + _random.nextInt(180))),
            endDate: _random.nextBool() ? now.add(Duration(days: 30)) : null,
            isActive: true,
            prescribedBy:
                'Dr. ${["Sharma", "Patel", "Kumar"][_random.nextInt(3)]}',
            purpose: [
              'Blood sugar control',
              'Blood pressure management',
              'Heart health',
              'Pain relief',
            ][_random.nextInt(4)],
            sideEffects: _random.nextBool() ? 'Nausea, dizziness' : null,
            instructions: 'Take with food',
          ),
        );
      }

      Logger.info(
        'Fetched ${medications.length} medications',
        tag: 'MedicationAdherenceDatasource',
      );
      return medications;
    } catch (e) {
      Logger.error(
        'Error fetching medications',
        tag: 'MedicationAdherenceDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch adherence records
  Future<List<AdherenceRecordModel>> fetchAdherenceRecords(
    String patientId,
  ) async {
    try {
      Logger.info(
        'Fetching adherence records for patient $patientId',
        tag: 'MedicationAdherenceDatasource',
      );

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final records = <AdherenceRecordModel>[];

      // Generate records for last 7 days
      for (int day = 6; day >= 0; day--) {
        final date = now.subtract(Duration(days: day));

        // 3 doses per day
        for (int dose = 0; dose < 3; dose++) {
          final scheduledTime = DateTime(
            date.year,
            date.month,
            date.day,
            8 + (dose * 6),
            0,
          );

          final statusRand = _random.nextDouble();
          String status;
          DateTime? actualTime;

          if (statusRand < 0.75) {
            status = 'taken';
            actualTime = scheduledTime.add(
              Duration(minutes: _random.nextInt(30)),
            );
          } else if (statusRand < 0.85) {
            status = 'delayed';
            actualTime = scheduledTime.add(
              Duration(hours: 1 + _random.nextInt(3)),
            );
          } else if (statusRand < 0.95) {
            status = 'missed';
          } else {
            status = 'skipped';
          }

          records.add(
            AdherenceRecordModel(
              id: 'REC${records.length + 1}',
              medicationId: 'MED${dose + 1}',
              medicationName: _medications[dose],
              patientId: patientId,
              patientName: _patientNames[_random.nextInt(_patientNames.length)],
              scheduledTime: scheduledTime,
              actualTime: actualTime,
              status: status,
              reason: status == 'missed'
                  ? ['Forgot', 'Busy', 'Side effects'][_random.nextInt(3)]
                  : null,
              notes: status == 'taken' ? 'Confirmed by patient' : null,
              verifiedByCaregiver: status == 'taken'
                  ? _random.nextBool()
                  : null,
            ),
          );
        }
      }

      Logger.info(
        'Fetched ${records.length} adherence records',
        tag: 'MedicationAdherenceDatasource',
      );
      return records;
    } catch (e) {
      Logger.error(
        'Error fetching adherence records',
        tag: 'MedicationAdherenceDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch interventions
  Future<List<InterventionModel>> fetchInterventions() async {
    try {
      Logger.info(
        'Fetching interventions',
        tag: 'MedicationAdherenceDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final interventions = <InterventionModel>[
        InterventionModel(
          id: 'INT001',
          type: 'reminder',
          interventionName: 'SMS Reminder System',
          patientId: 'PAT000001',
          patientName: 'Rajesh Kumar',
          description:
              'Set up automated SMS reminders 30 minutes before each dose',
          expectedOutcome: 'Improve adherence by 20%',
          status: 'in_progress',
          createdAt: now.subtract(Duration(days: 5)),
          scheduledFor: now.add(Duration(days: 1)),
          assignedTo: 'Nurse Priya',
        ),
        InterventionModel(
          id: 'INT002',
          type: 'pillbox',
          interventionName: 'Weekly Pillbox Setup',
          patientId: 'PAT000002',
          patientName: 'Priya Sharma',
          description:
              'Provide and set up weekly pill organizer with caregiver training',
          expectedOutcome: 'Reduce missed doses by 50%',
          status: 'scheduled',
          createdAt: now.subtract(Duration(days: 3)),
          scheduledFor: now.add(Duration(days: 2)),
          assignedTo: 'Pharmacist Kumar',
        ),
        InterventionModel(
          id: 'INT003',
          type: 'counseling',
          interventionName: 'Medication Counseling',
          patientId: 'PAT000003',
          patientName: 'Lakshmi Devi',
          description:
              'One-on-one session to address side effect concerns and medication purpose',
          expectedOutcome: 'Improve understanding and compliance',
          status: 'recommended',
          createdAt: now.subtract(Duration(days: 1)),
          scheduledFor: null,
          assignedTo: null,
        ),
        InterventionModel(
          id: 'INT004',
          type: 'simplification',
          interventionName: 'Regimen Simplification',
          patientId: 'PAT000004',
          patientName: 'Amit Patel',
          description:
              'Consult with doctor to consolidate medications and reduce dosing frequency',
          expectedOutcome: 'Reduce complexity, improve adherence',
          status: 'in_progress',
          createdAt: now.subtract(Duration(days: 7)),
          scheduledFor: now.add(Duration(days: 3)),
          assignedTo: 'Dr. Sharma',
        ),
        InterventionModel(
          id: 'INT005',
          type: 'caregiver_support',
          interventionName: 'Family Caregiver Training',
          patientId: 'PAT000005',
          patientName: 'Sunita Reddy',
          description:
              'Train family member on medication administration and monitoring',
          expectedOutcome: 'Ensure proper medication management',
          status: 'completed',
          createdAt: now.subtract(Duration(days: 10)),
          scheduledFor: now.subtract(Duration(days: 5)),
          completedAt: now.subtract(Duration(days: 3)),
          assignedTo: 'Nurse Meera',
          outcome: 'Family member successfully trained, adherence improved',
        ),
        InterventionModel(
          id: 'INT006',
          type: 'financial_assistance',
          interventionName: 'Generic Medication Switch',
          patientId: 'PAT000006',
          patientName: 'Mohan Das',
          description:
              'Coordinate with doctor to switch to affordable generic alternatives',
          expectedOutcome:
              'Reduce cost burden, prevent financial non-adherence',
          status: 'recommended',
          createdAt: now.subtract(Duration(hours: 12)),
          scheduledFor: null,
          assignedTo: null,
        ),
      ];

      Logger.info(
        'Fetched ${interventions.length} interventions',
        tag: 'MedicationAdherenceDatasource',
      );
      return interventions;
    } catch (e) {
      Logger.error(
        'Error fetching interventions',
        tag: 'MedicationAdherenceDatasource',
        error: e,
      );
      rethrow;
    }
  }

  List<String> _getTimings(int index) {
    switch (index % 3) {
      case 0:
        return ['08:00 AM'];
      case 1:
        return ['08:00 AM', '08:00 PM'];
      default:
        return ['08:00 AM', '02:00 PM', '08:00 PM'];
    }
  }
}
