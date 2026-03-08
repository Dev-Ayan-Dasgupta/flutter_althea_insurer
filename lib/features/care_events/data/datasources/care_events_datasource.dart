import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/audit_flag_model.dart';
import '../models/care_event_model.dart';
import '../models/verification_detail_model.dart';
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

  // Add to existing CareEventsDatasource class

  // Fetch flagged events for audit
  Future<List<CareEventModel>> fetchFlaggedEvents() async {
    try {
      Logger.info('Fetching flagged events', tag: 'CareEventsDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final allEvents = await fetchCareEvents(limit: 50);

      // Filter events with flags
      final flaggedEvents = allEvents.where((event) {
        return event.verificationStatus.status == 'flagged' ||
            event.verificationStatus.status == 'pending';
      }).toList();

      Logger.info(
        'Fetched ${flaggedEvents.length} flagged events',
        tag: 'CareEventsDatasource',
      );
      return flaggedEvents;
    } catch (e) {
      Logger.error(
        'Error fetching flagged events',
        tag: 'CareEventsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch audit flags for an event
  Future<List<AuditFlagModel>> fetchAuditFlags(String eventId) async {
    try {
      Logger.info(
        'Fetching audit flags for event: $eventId',
        tag: 'CareEventsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 300));

      final flags = <AuditFlagModel>[];

      // Generate random flags based on event
      if (_random.nextDouble() < 0.3) {
        flags.add(
          AuditFlagModel(
            id: 'AF${_random.nextInt(1000)}',
            type: 'gps_discrepancy',
            severity: 'medium',
            description: 'GPS location mismatch',
            reason:
                'Recorded GPS coordinates are 50m away from patient registered address',
            detectedAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(60)),
            ),
            requiresInvestigation: true,
          ),
        );
      }

      if (_random.nextDouble() < 0.2) {
        flags.add(
          AuditFlagModel(
            id: 'AF${_random.nextInt(1000)}',
            type: 'short_duration',
            severity: 'low',
            description: 'Service duration shorter than expected',
            reason: 'Visit lasted 12 minutes, expected minimum 15 minutes',
            detectedAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(60)),
            ),
            requiresInvestigation: false,
          ),
        );
      }

      if (_random.nextDouble() < 0.15) {
        flags.add(
          AuditFlagModel(
            id: 'AF${_random.nextInt(1000)}',
            type: 'time_anomaly',
            severity: 'high',
            description: 'Service time outside normal hours',
            reason: 'Visit logged at 11:45 PM, outside typical service hours',
            detectedAt: DateTime.now().subtract(
              Duration(minutes: _random.nextInt(60)),
            ),
            requiresInvestigation: true,
          ),
        );
      }

      Logger.info(
        'Fetched ${flags.length} audit flags',
        tag: 'CareEventsDatasource',
      );
      return flags;
    } catch (e) {
      Logger.error(
        'Error fetching audit flags',
        tag: 'CareEventsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch verification details for an event
  Future<VerificationDetailModel> fetchVerificationDetails(
    String eventId,
  ) async {
    try {
      Logger.info(
        'Fetching verification details for event: $eventId',
        tag: 'CareEventsDatasource',
      );

      await Future.delayed(Duration(milliseconds: 400));

      final hasManualOverride = _random.nextDouble() < 0.1;

      return VerificationDetailModel(
        bleVerified: _random.nextDouble() > 0.15,
        gpsVerified: _random.nextDouble() > 0.1,
        timestampVerified: _random.nextDouble() > 0.05,
        bleDeviceId: 'BLE-${_random.nextInt(9999).toString().padLeft(4, '0')}',
        gpsLatitude: 22.5726 + (_random.nextDouble() * 0.02 - 0.01),
        gpsLongitude: 88.3639 + (_random.nextDouble() * 0.02 - 0.01),
        gpsAccuracy: 5.0 + (_random.nextDouble() * 10),
        actualStartTime: DateTime.now().subtract(Duration(hours: 2)),
        actualEndTime: DateTime.now().subtract(Duration(hours: 1, minutes: 30)),
        actualDuration: 30 + _random.nextInt(30),
        expectedDuration: 45,
        manualOverride: hasManualOverride,
        overrideReason: hasManualOverride
            ? 'Network connectivity issue at location'
            : null,
        overrideBy: hasManualOverride ? 'Supervisor John Doe' : null,
      );
    } catch (e) {
      Logger.error(
        'Error fetching verification details',
        tag: 'CareEventsDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch audit statistics
  Future<Map<String, dynamic>> fetchAuditStats() async {
    try {
      Logger.info('Fetching audit statistics', tag: 'CareEventsDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final totalEvents = 500;
      final verified = 425;
      final flagged = 45;
      final pending = 30;
      final resolved = 38;

      return {
        'totalEvents': totalEvents,
        'verified': verified,
        'flagged': flagged,
        'pending': pending,
        'resolved': resolved,
        'verificationRate': (verified / totalEvents * 100),
        'flagRate': (flagged / totalEvents * 100),
        'resolutionRate': (resolved / (flagged + pending) * 100),
      };
    } catch (e) {
      Logger.error(
        'Error fetching audit stats',
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
