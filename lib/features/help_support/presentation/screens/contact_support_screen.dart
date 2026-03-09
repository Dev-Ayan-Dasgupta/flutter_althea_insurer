import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/help_support_provider.dart';
import '../../domain/entities/support_ticket_entity.dart';

class ContactSupportScreen extends ConsumerStatefulWidget {
  const ContactSupportScreen({super.key});

  @override
  ConsumerState<ContactSupportScreen> createState() =>
      _ContactSupportScreenState();
}

class _ContactSupportScreenState extends ConsumerState<ContactSupportScreen> {
  final _formKey = GlobalKey<FormState>();
  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _emailController = TextEditingController();

  TicketCategory _selectedCategory = TicketCategory.question;
  TicketPriority _selectedPriority = TicketPriority.medium;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: Text('Contact Support')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                'Submit a Support Ticket',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Our support team will get back to you within 24 hours',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
              SizedBox(height: 32),

              // Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address *',
                  hintText: 'your.email@example.com',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Category
              DropdownButtonFormField<TicketCategory>(
                value: _selectedCategory,
                decoration: InputDecoration(
                  labelText: 'Category *',
                  prefixIcon: Icon(Icons.category),
                ),
                items: TicketCategory.values.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(_getCategoryLabel(category)),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedCategory = value;
                    });
                  }
                },
              ),
              SizedBox(height: 16),

              // Priority
              DropdownButtonFormField<TicketPriority>(
                value: _selectedPriority,
                decoration: InputDecoration(
                  labelText: 'Priority *',
                  prefixIcon: Icon(Icons.priority_high),
                ),
                items: TicketPriority.values.map((priority) {
                  return DropdownMenuItem(
                    value: priority,
                    child: Text(_getPriorityLabel(priority)),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedPriority = value;
                    });
                  }
                },
              ),
              SizedBox(height: 16),

              // Subject
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: 'Subject *',
                  hintText: 'Brief description of your issue',
                  prefixIcon: Icon(Icons.subject),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a subject';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Description
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description *',
                  hintText: 'Provide detailed information about your issue',
                  alignLabelWithHint: true,
                ),
                maxLines: 6,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  if (value.length < 20) {
                    return 'Please provide more details (minimum 20 characters)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isSubmitting ? null : _submitTicket,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: _isSubmitting
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        )
                      : Text('Submit Ticket'),
                ),
              ),
              SizedBox(height: 16),

              // Info Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.info.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.info.withValues(alpha: 0.2),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: AppColors.info, size: 20),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'For urgent issues, please call our support hotline at +91 1800-XXX-XXXX',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.info,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submitTicket() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      final datasource = ref.read(helpSupportDatasourceProvider);
      final ticket = await datasource.submitSupportTicket(
        category: _selectedCategory.toString().split('.').last,
        priority: _selectedPriority.toString().split('.').last,
        subject: _subjectController.text,
        description: _descriptionController.text,
        userEmail: _emailController.text,
      );

      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Row(
              children: [
                Icon(Icons.check_circle, color: AppColors.success),
                SizedBox(width: 8),
                Text('Ticket Submitted'),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your support ticket has been submitted successfully.'),
                SizedBox(height: 16),
                Text(
                  'Ticket Number: ${ticket.ticketNumber}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.primarySteelBlue,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'We will get back to you at ${_emailController.text} within 24 hours.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to submit ticket. Please try again.'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }

  String _getCategoryLabel(TicketCategory category) {
    switch (category) {
      case TicketCategory.technical:
        return 'Technical Issue';
      case TicketCategory.billing:
        return 'Billing Question';
      case TicketCategory.feature:
        return 'Feature Request';
      case TicketCategory.bug:
        return 'Bug Report';
      case TicketCategory.question:
        return 'General Question';
      case TicketCategory.other:
        return 'Other';
    }
  }

  String _getPriorityLabel(TicketPriority priority) {
    switch (priority) {
      case TicketPriority.low:
        return 'Low - Can wait';
      case TicketPriority.medium:
        return 'Medium - Normal';
      case TicketPriority.high:
        return 'High - Important';
      case TicketPriority.urgent:
        return 'Urgent - Critical';
    }
  }
}
