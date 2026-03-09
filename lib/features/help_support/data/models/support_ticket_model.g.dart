// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketModel _$SupportTicketModelFromJson(Map<String, dynamic> json) =>
    _SupportTicketModel(
      id: json['id'] as String,
      ticketNumber: json['ticketNumber'] as String,
      category: json['category'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      userEmail: json['userEmail'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      assignedTo: json['assignedTo'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SupportTicketModelToJson(_SupportTicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticketNumber': instance.ticketNumber,
      'category': instance.category,
      'priority': instance.priority,
      'status': instance.status,
      'subject': instance.subject,
      'description': instance.description,
      'userEmail': instance.userEmail,
      'createdAt': instance.createdAt.toIso8601String(),
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'assignedTo': instance.assignedTo,
      'attachments': instance.attachments,
    };
