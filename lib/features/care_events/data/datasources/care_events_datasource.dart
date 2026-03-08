import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/care_event_model.dart';
import '../models/verification_status_model.dart';

class CareEventsDatasource {
  final Random _random = Random();

  final List<String> _patientNames = [
    'Rajesh Kumar',
    'Priya Sharma',
    'Amit Patel',
    'Sunita Desai',
    'Vikram Singh',
    'Anita Reddy',
    'Suresh Gupta',
    'Meera Iyer',
  ];

  final List<String> _caregiverNames = [
    'Nurse Kavita',
    'Nurse Ravi',
    'Phlebotomist Sunil',
    'Nurse Deepa',
    'Physiotherapist Arun',
    'Nurse Lakshmi',
  ];

  final List<String> _eventTypes = [
    'Nurse Visit',
    'Medication Delivery',
    'Diagnostic Test',
    'Physiotherapy',
    'Wound Care',
    'Vital Check',
  ];

  final List<String> _descriptions = [
    'Wound dressing change and vital signs monitoring',
    'Blood pressure and glucose level check',
    'Medication administration and patient education',
    'Blood sample collection for routine tests',
    'Post-operative wound care and assessment',
    'Physiotherapy session for mobility improvement',
  ];

  // Mock API call to fetch care events
  Future<List<CareEventModel>> fetchCareEvents({
    String? status,
    String? eventType,
    int limit = 50,
  }) async {
    try {
      Logger.info('Fetching care events', tag: 'CareEventsDatasource');

      // Simulate network delay
      await Future.delayed(Duration(milliseconds: 800));

      final events = List.generate(limit, (index) {
        final scheduledDate = DateTime.now().subtract(
          Duration(hours: _random.nextInt(72), minutes: _random.nextInt(60)),
        );
        final completedDate = scheduledDate.add(
          Duration(minutes: 30 + _random.nextInt(90)),
        );

        final verificationStatus = _generateVerificationStatus();

        // Filter by status if provided
        if (status != null && verificationStatus.status != status) {
          return null;
        }

        final eventTypeStr = _eventTypes[_random.nextInt(_eventTypes.length)];

        // Filter by event type if provided
        if (eventType != null && eventTypeStr != eventType) {
          return null;
        }

        return CareEventModel(
          id: 'CE${1000 + index}',
          patientId: 'PT${_random.nextInt(1000)}',
          patientName: _patientNames[_random.nextInt(_patientNames.length)],
          caregiverId: 'CG${_random.nextInt(100)}',
          caregiverName:
              _caregiverNames[_random.nextInt(_caregiverNames.length)],
          eventType: eventTypeStr,
          description: _descriptions[_random.nextInt(_descriptions.length)],
          scheduledAt: scheduledDate,
          completedAt: completedDate,
          verificationStatus: verificationStatus,
          latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
          longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
          duration: 30 + _random.nextInt(90),
          notes: _random.nextBool()
              ? 'Patient responded well to treatment'
              : null,
          attachments: _random.nextBool()
              ? ['image_${_random.nextInt(100)}.jpg']
              : null,
          claimAmount: 200.0 + (_random.nextDouble() * 800),
          createdAt: scheduledDate.subtract(Duration(days: 1)),
        );
      }).whereType<CareEventModel>().toList();

      Logger.info(
        'Fetched ${events.length} care events',
        tag: 'CareEventsDatasource',
      );
      return events;
    } catch (e) {
      Logger.error(
        'Error fetching care events',
        tag: 'CareEventsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch single care event
  Future<CareEventModel> fetchCareEventById(String id) async {
    try {
      Logger.info('Fetching care event: $id', tag: 'CareEventsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final scheduledDate = DateTime.now().subtract(
        Duration(hours: _random.nextInt(72)),
      );
      final completedDate = scheduledDate.add(Duration(minutes: 45));

      return CareEventModel(
        id: id,
        patientId: 'PT${_random.nextInt(1000)}',
        patientName: _patientNames[_random.nextInt(_patientNames.length)],
        caregiverId: 'CG${_random.nextInt(100)}',
        caregiverName: _caregiverNames[_random.nextInt(_caregiverNames.length)],
        eventType: _eventTypes[_random.nextInt(_eventTypes.length)],
        description: _descriptions[_random.nextInt(_descriptions.length)],
        scheduledAt: scheduledDate,
        completedAt: completedDate,
        verificationStatus: _generateVerificationStatus(),
        latitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
        longitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
        duration: 45,
        notes:
            'Detailed notes about the care event. Patient vitals are stable.',
        attachments: ['before.jpg', 'after.jpg'],
        claimAmount: 500.0 + (_random.nextDouble() * 500),
        createdAt: scheduledDate.subtract(Duration(days: 1)),
      );
    } catch (e) {
      Logger.error(
        'Error fetching care event',
        tag: 'CareEventsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  VerificationStatusModel _generateVerificationStatus() {
    final rand = _random.nextDouble();

    if (rand < 0.7) {
      // 70% fully verified
      return VerificationStatusModel(
        status: 'verified',
        bleVerified: true,
        gpsVerified: true,
        timestampVerified: true,
      );
    } else if (rand < 0.85) {
      // 15% partial
      return VerificationStatusModel(
        status: 'partial',
        bleVerified: true,
        gpsVerified: _random.nextBool(),
        timestampVerified: true,
      );
    } else if (rand < 0.95) {
      // 10% pending
      return VerificationStatusModel(
        status: 'pending',
        bleVerified: false,
        gpsVerified: false,
        timestampVerified: true,
      );
    } else {
      // 5% flagged
      return VerificationStatusModel(
        status: 'flagged',
        bleVerified: false,
        gpsVerified: true,
        timestampVerified: true,
        flagReason: 'GPS location mismatch detected',
      );
    }
  }
}
