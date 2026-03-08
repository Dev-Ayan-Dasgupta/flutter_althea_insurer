import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/emergency_case_model.dart';
import '../models/patient_vitals_model.dart';
import '../models/pre_auth_model.dart';

class EmergencyTriageDatasource {
  final Random _random = Random();

  final List<String> _patientNames = [
    'Rajesh Kumar',
    'Sanjay Mehta',
    'Priya Sharma',
    'Amit Patel',
    'Sunita Desai',
    'Vikram Singh',
    'Anita Reddy',
    'Suresh Gupta',
  ];

  final List<String> _complaints = [
    'Chest pain, difficulty breathing',
    'Severe abdominal pain',
    'Road traffic accident, multiple injuries',
    'Sudden onset severe headache',
    'Cardiac arrest, CPR in progress',
    'Stroke symptoms, left side weakness',
    'Fall from height, suspected fractures',
    'Difficulty breathing, suspected asthma attack',
  ];

  final List<String> _locations = [
    'Kasba, South Kolkata',
    'Rajarhat, New Town',
    'Salt Lake Sector V',
    'Park Street, Central Kolkata',
    'Alipore, South Kolkata',
    'EM Bypass, Kasba',
  ];

  final List<String> _hospitals = [
    'Apollo Gleneagles Hospital',
    'Medica Superspecialty Hospital',
    'AMRI Hospital',
    'Fortis Hospital',
    'Peerless Hospital',
  ];

  final List<String> _medicalHistories = [
    'Diabetes mellitus type 2, Hypertension',
    'No known medical history',
    'Coronary artery disease, previous MI',
    'Asthma, allergic rhinitis',
    'Hypertension, hyperlipidemia',
  ];

  // Mock API call to fetch emergency cases
  Future<List<EmergencyCaseModel>> fetchEmergencyCases({
    String? severity,
    String? status,
  }) async {
    try {
      Logger.info('Fetching emergency cases', tag: 'EmergencyTriageDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final cases = List.generate(15, (index) {
        final dispatchTime = DateTime.now().subtract(
          Duration(minutes: _random.nextInt(120)),
        );

        final severityStr = _generateSeverity();
        final statusStr = _generateStatus();

        // Filter by severity if provided
        if (severity != null && severityStr != severity) {
          return null;
        }

        // Filter by status if provided
        if (status != null && statusStr != status) {
          return null;
        }

        final hasPreAuth = _random.nextDouble() > 0.6;

        return EmergencyCaseModel(
          id: 'EMG${1000 + index}',
          patientId: 'PT${_random.nextInt(1000)}',
          patientName: _patientNames[_random.nextInt(_patientNames.length)],
          patientAge: 25 + _random.nextInt(60),
          chiefComplaint: _complaints[_random.nextInt(_complaints.length)],
          severity: severityStr,
          status: statusStr,
          ambulanceId: 'AMB${_random.nextInt(10)}',
          paramedicName:
              'Paramedic ${String.fromCharCode(65 + _random.nextInt(26))}',
          vitals: _generateVitals(severityStr),
          location: _locations[_random.nextInt(_locations.length)],
          latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
          longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
          destinationHospital: _hospitals[_random.nextInt(_hospitals.length)],
          estimatedCost: 50000.0 + (_random.nextDouble() * 150000),
          preAuth: hasPreAuth
              ? PreAuthModel(
                  id: 'PA${1000 + index}',
                  emergencyCaseId: 'EMG${1000 + index}',
                  status: 'approved',
                  approvedAmount: 150000.0 + (_random.nextDouble() * 50000),
                  approvedBy: 'Dr. Medical Officer',
                  approvedAt: dispatchTime.add(Duration(minutes: 5)),
                  notes: 'Emergency pre-authorization approved',
                )
              : null,
          medicalHistory:
              _medicalHistories[_random.nextInt(_medicalHistories.length)],
          medications: _random.nextBool()
              ? ['Aspirin 75mg', 'Metformin 500mg', 'Amlodipine 5mg']
              : null,
          dispatchedAt: dispatchTime,
          arrivedAt: statusStr != 'dispatched'
              ? dispatchTime.add(Duration(minutes: 8 + _random.nextInt(7)))
              : null,
          transportedAt:
              statusStr == 'transporting_to_hospital' ||
                  statusStr == 'at_hospital' ||
                  statusStr == 'completed'
              ? dispatchTime.add(Duration(minutes: 20 + _random.nextInt(15)))
              : null,
          createdAt: dispatchTime.subtract(Duration(minutes: 2)),
        );
      }).whereType<EmergencyCaseModel>().toList();

      Logger.info(
        'Fetched ${cases.length} emergency cases',
        tag: 'EmergencyTriageDatasource',
      );
      return cases;
    } catch (e) {
      Logger.error(
        'Error fetching emergency cases',
        tag: 'EmergencyTriageDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch single emergency case
  Future<EmergencyCaseModel> fetchEmergencyCaseById(String id) async {
    try {
      Logger.info(
        'Fetching emergency case: $id',
        tag: 'EmergencyTriageDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final dispatchTime = DateTime.now().subtract(
        Duration(minutes: _random.nextInt(60)),
      );

      final severityStr = _generateSeverity();

      return EmergencyCaseModel(
        id: id,
        patientId: 'PT${_random.nextInt(1000)}',
        patientName: _patientNames[_random.nextInt(_patientNames.length)],
        patientAge: 25 + _random.nextInt(60),
        chiefComplaint: _complaints[_random.nextInt(_complaints.length)],
        severity: severityStr,
        status: 'on_scene',
        ambulanceId: 'AMB${_random.nextInt(10)}',
        paramedicName:
            'Paramedic ${String.fromCharCode(65 + _random.nextInt(26))}',
        vitals: _generateVitals(severityStr),
        location: _locations[_random.nextInt(_locations.length)],
        latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
        longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
        destinationHospital: _hospitals[_random.nextInt(_hospitals.length)],
        estimatedCost: 100000.0 + (_random.nextDouble() * 100000),
        preAuth: null,
        medicalHistory:
            _medicalHistories[_random.nextInt(_medicalHistories.length)],
        medications: ['Aspirin 75mg', 'Metformin 500mg', 'Amlodipine 5mg'],
        dispatchedAt: dispatchTime,
        arrivedAt: dispatchTime.add(Duration(minutes: 10)),
        transportedAt: null,
        createdAt: dispatchTime.subtract(Duration(minutes: 2)),
      );
    } catch (e) {
      Logger.error(
        'Error fetching emergency case',
        tag: 'EmergencyTriageDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to approve pre-authorization
  Future<PreAuthModel> approvePreAuth({
    required String caseId,
    required double amount,
    required String approvedBy,
    String? notes,
  }) async {
    try {
      Logger.info(
        'Approving pre-auth for case: $caseId',
        tag: 'EmergencyTriageDatasource',
      );

      await Future.delayed(Duration(milliseconds: 1000));

      final preAuth = PreAuthModel(
        id: 'PA${DateTime.now().millisecondsSinceEpoch}',
        emergencyCaseId: caseId,
        status: 'approved',
        approvedAmount: amount,
        approvedBy: approvedBy,
        approvedAt: DateTime.now(),
        notes: notes,
      );

      Logger.info(
        'Pre-auth approved successfully',
        tag: 'EmergencyTriageDatasource',
      );
      return preAuth;
    } catch (e) {
      Logger.error(
        'Error approving pre-auth',
        tag: 'EmergencyTriageDatasource',
        error: e,
      );
      rethrow;
    }
  }

  String _generateSeverity() {
    final rand = _random.nextDouble();
    if (rand < 0.3) return 'critical';
    if (rand < 0.5) return 'high';
    if (rand < 0.8) return 'moderate';
    return 'low';
  }

  String _generateStatus() {
    final rand = _random.nextDouble();
    if (rand < 0.2) return 'dispatched';
    if (rand < 0.4) return 'en_route';
    if (rand < 0.6) return 'on_scene';
    if (rand < 0.8) return 'transporting_to_hospital';
    if (rand < 0.95) return 'at_hospital';
    return 'completed';
  }

  PatientVitalsModel _generateVitals(String severity) {
    int heartRate;
    int oxygenSat;
    int systolic;
    int diastolic;

    switch (severity) {
      case 'critical':
        heartRate = 120 + _random.nextInt(40);
        oxygenSat = 75 + _random.nextInt(15);
        systolic = 80 + _random.nextInt(30);
        diastolic = 40 + _random.nextInt(20);
        break;
      case 'high':
        heartRate = 100 + _random.nextInt(30);
        oxygenSat = 88 + _random.nextInt(8);
        systolic = 90 + _random.nextInt(30);
        diastolic = 50 + _random.nextInt(20);
        break;
      case 'moderate':
        heartRate = 80 + _random.nextInt(30);
        oxygenSat = 92 + _random.nextInt(6);
        systolic = 100 + _random.nextInt(30);
        diastolic = 60 + _random.nextInt(20);
        break;
      default:
        heartRate = 70 + _random.nextInt(20);
        oxygenSat = 95 + _random.nextInt(4);
        systolic = 110 + _random.nextInt(20);
        diastolic = 70 + _random.nextInt(15);
    }

    return PatientVitalsModel(
      heartRate: heartRate,
      bloodPressureSystolic: systolic,
      bloodPressureDiastolic: diastolic,
      oxygenSaturation: oxygenSat,
      temperature: 36.5 + (_random.nextDouble() * 2),
      respiratoryRate: 16 + _random.nextInt(8),
      ecgData: severity == 'critical' || severity == 'high'
          ? 'ECG data available'
          : null,
      recordedAt: DateTime.now().subtract(
        Duration(minutes: _random.nextInt(5)),
      ),
    );
  }
}
