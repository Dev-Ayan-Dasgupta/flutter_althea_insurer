import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_entity.freezed.dart';

enum TicketPriority { low, medium, high, urgent }

enum TicketStatus { open, inProgress, waitingForResponse, resolved, closed }

enum TicketCategory { technical, billing, feature, bug, question, other }

@freezed
abstract class SupportTicketEntity with _$SupportTicketEntity {
  const factory SupportTicketEntity({
    required String id,
    required String ticketNumber,
    required TicketCategory category,
    required TicketPriority priority,
    required TicketStatus status,
    required String subject,
    required String description,
    required String userEmail,
    required DateTime createdAt,
    DateTime? resolvedAt,
    String? assignedTo,
    List<String>? attachments,
  }) = _SupportTicketEntity;
}
