import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/support_ticket_entity.dart';

part 'support_ticket_model.freezed.dart';
part 'support_ticket_model.g.dart';

@freezed
abstract class SupportTicketModel with _$SupportTicketModel {
  const SupportTicketModel._();

  const factory SupportTicketModel({
    required String id,
    required String ticketNumber,
    required String category,
    required String priority,
    required String status,
    required String subject,
    required String description,
    required String userEmail,
    required DateTime createdAt,
    DateTime? resolvedAt,
    String? assignedTo,
    List<String>? attachments,
  }) = _SupportTicketModel;

  factory SupportTicketModel.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketModelFromJson(json);

  SupportTicketEntity toEntity() {
    TicketCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'technical':
        categoryEnum = TicketCategory.technical;
        break;
      case 'billing':
        categoryEnum = TicketCategory.billing;
        break;
      case 'feature':
        categoryEnum = TicketCategory.feature;
        break;
      case 'bug':
        categoryEnum = TicketCategory.bug;
        break;
      case 'question':
        categoryEnum = TicketCategory.question;
        break;
      case 'other':
        categoryEnum = TicketCategory.other;
        break;
      default:
        categoryEnum = TicketCategory.question;
    }

    TicketPriority priorityEnum;
    switch (priority.toLowerCase()) {
      case 'low':
        priorityEnum = TicketPriority.low;
        break;
      case 'medium':
        priorityEnum = TicketPriority.medium;
        break;
      case 'high':
        priorityEnum = TicketPriority.high;
        break;
      case 'urgent':
        priorityEnum = TicketPriority.urgent;
        break;
      default:
        priorityEnum = TicketPriority.medium;
    }

    TicketStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'open':
        statusEnum = TicketStatus.open;
        break;
      case 'in_progress':
        statusEnum = TicketStatus.inProgress;
        break;
      case 'waiting_for_response':
        statusEnum = TicketStatus.waitingForResponse;
        break;
      case 'resolved':
        statusEnum = TicketStatus.resolved;
        break;
      case 'closed':
        statusEnum = TicketStatus.closed;
        break;
      default:
        statusEnum = TicketStatus.open;
    }

    return SupportTicketEntity(
      id: id,
      ticketNumber: ticketNumber,
      category: categoryEnum,
      priority: priorityEnum,
      status: statusEnum,
      subject: subject,
      description: description,
      userEmail: userEmail,
      createdAt: createdAt,
      resolvedAt: resolvedAt,
      assignedTo: assignedTo,
      attachments: attachments,
    );
  }
}
