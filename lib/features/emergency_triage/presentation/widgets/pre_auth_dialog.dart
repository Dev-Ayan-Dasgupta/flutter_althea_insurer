import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/utils/extensions.dart';
import '../providers/emergency_triage_provider.dart';

class PreAuthDialog extends ConsumerStatefulWidget {
  final String caseId;
  final double estimatedCost;
  final String patientName;

  const PreAuthDialog({
    super.key,
    required this.caseId,
    required this.estimatedCost,
    required this.patientName,
  });

  @override
  ConsumerState<PreAuthDialog> createState() => _PreAuthDialogState();
}

class _PreAuthDialogState extends ConsumerState<PreAuthDialog> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _amountController.text = widget.estimatedCost.toStringAsFixed(0);
  }

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _handleApprove() {
    if (_formKey.currentState?.validate() ?? false) {
      final amount = double.tryParse(_amountController.text) ?? 0.0;

      ref
          .read(preAuthApprovalProvider.notifier)
          .approvePreAuth(
            caseId: widget.caseId,
            amount: amount,
            approvedBy: 'Insurance Partner Admin',
            notes: _notesController.text.isEmpty ? null : _notesController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final preAuthState = ref.watch(preAuthApprovalProvider);

    ref.listen<AsyncValue>(preAuthApprovalProvider, (previous, next) {
      next.when(
        data: (preAuth) {
          if (preAuth != null) {
            Navigator.pop(context, true);
            context.showSnackBar('Pre-authorization approved successfully');
          }
        },
        loading: () {},
        error: (error, stack) {
          context.showSnackBar(
            'Failed to approve pre-authorization: $error',
            action: SnackBarAction(label: 'Dismiss', onPressed: () {}),
          );
        },
      );
    });

    final isLoading = preAuthState.isLoading;

    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.approval, color: AppColors.primarySteelBlue),
          SizedBox(width: 12),
          Text('Pre-Authorization'),
        ],
      ),
      content: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Patient Info
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.info.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Patient',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.info,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.patientName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Case ID: ${widget.caseId}',
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Amount Field
              CustomTextField(
                controller: _amountController,
                label: 'Approved Amount',
                hint: 'Enter amount',
                keyboardType: TextInputType.number,
                prefixIcon: Icons.currency_rupee,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter amount';
                  }
                  final amount = double.tryParse(value);
                  if (amount == null || amount <= 0) {
                    return 'Please enter valid amount';
                  }
                  return null;
                },
              ),
              SizedBox(height: 4),
              Text(
                'Estimated: ${widget.estimatedCost.toCurrency()}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.secondarySteelGrey,
                ),
              ),
              SizedBox(height: 16),

              // Notes Field
              CustomTextField(
                controller: _notesController,
                label: 'Notes (Optional)',
                hint: 'Add any additional notes',
                maxLines: 3,
                prefixIcon: Icons.notes,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        CustomButton(
          text: 'Approve',
          onPressed: isLoading ? null : _handleApprove,
          isLoading: isLoading,
          icon: Icons.check,
        ),
      ],
    );
  }
}
