import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/care_events_datasource.dart';
import '../../domain/entities/care_event_entity.dart';
import '../../domain/entities/verification_status_entity.dart';

part 'care_events_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
CareEventsDatasource careEventsDatasource(Ref ref) {
  return CareEventsDatasource();
}

// Filter State Provider
@riverpod
class CareEventsFilter extends _$CareEventsFilter {
  @override
  CareEventsFilterState build() {
    return CareEventsFilterState(status: null, eventType: null);
  }

  void setStatus(String? status) {
    state = state.copyWith(status: status);
  }

  void setEventType(String? eventType) {
    state = state.copyWith(eventType: eventType);
  }

  void reset() {
    state = CareEventsFilterState(status: null, eventType: null);
  }
}

class CareEventsFilterState {
  final String? status;
  final String? eventType;

  CareEventsFilterState({required this.status, required this.eventType});

  CareEventsFilterState copyWith({String? status, String? eventType}) {
    return CareEventsFilterState(status: status, eventType: eventType);
  }
}

// Care Events List Provider
@riverpod
Future<List<CareEventEntity>> careEvents(Ref ref) async {
  final datasource = ref.watch(careEventsDatasourceProvider);
  final filter = ref.watch(careEventsFilterProvider);

  final models = await datasource.fetchCareEvents(
    status: filter.status,
    eventType: filter.eventType,
  );

  return models.map((model) => model.toEntity()).toList();
}

// Single Care Event Provider
@riverpod
Future<CareEventEntity> careEventDetails(Ref ref, String id) async {
  final datasource = ref.watch(careEventsDatasourceProvider);
  final model = await datasource.fetchCareEventById(id);
  return model.toEntity();
}

// Statistics Provider
@riverpod
Future<CareEventsStats> careEventsStats(Ref ref) async {
  final events = await ref.watch(careEventsProvider.future);

  final verified = events
      .where(
        (e) => e.verificationStatus.status == VerificationStatusType.verified,
      )
      .length;
  final partial = events
      .where(
        (e) => e.verificationStatus.status == VerificationStatusType.partial,
      )
      .length;
  final flagged = events
      .where(
        (e) => e.verificationStatus.status == VerificationStatusType.flagged,
      )
      .length;
  final pending = events
      .where(
        (e) => e.verificationStatus.status == VerificationStatusType.pending,
      )
      .length;

  final totalClaims = events.fold<double>(
    0.0,
    (sum, event) => sum + event.claimAmount,
  );

  return CareEventsStats(
    total: events.length,
    verified: verified,
    partial: partial,
    flagged: flagged,
    pending: pending,
    totalClaims: totalClaims,
  );
}

class CareEventsStats {
  final int total;
  final int verified;
  final int partial;
  final int flagged;
  final int pending;
  final double totalClaims;

  CareEventsStats({
    required this.total,
    required this.verified,
    required this.partial,
    required this.flagged,
    required this.pending,
    required this.totalClaims,
  });
}
