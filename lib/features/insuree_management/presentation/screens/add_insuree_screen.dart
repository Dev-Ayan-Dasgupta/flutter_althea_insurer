import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../providers/insuree_provider.dart';

class AddInsureeScreen extends ConsumerStatefulWidget {
  const AddInsureeScreen({super.key});

  @override
  ConsumerState<AddInsureeScreen> createState() => _AddInsureeScreenState();
}

class _AddInsureeScreenState extends ConsumerState<AddInsureeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _policyNumberController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _medicalHistoryController = TextEditingController();

  DateTime? _dateOfBirth;
  String _gender = 'Male';
  bool _isAutoRenew = true;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _policyNumberController.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _medicalHistoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Add New Insuree')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Info Banner
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription Fee: ₹49/month',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: AppColors.info,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'You will be prompted to make the first month\'s payment after adding the insuree.',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.info,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Policy Number
              TextFormField(
                controller: _policyNumberController,
                decoration: InputDecoration(
                  labelText: 'Policy Number *',
                  hintText: 'POL2024XXXXXX',
                  prefixIcon: Icon(Icons.badge),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter policy number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Full Name
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name *',
                  hintText: 'Enter full name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address *',
                  hintText: 'email@example.com',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Phone
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: '+91 XXXXX XXXXX',
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16),

              // Date of Birth
              InkWell(
                onTap: () => _selectDateOfBirth(),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Date of Birth *',
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  child: Text(
                    _dateOfBirth != null
                        ? '${_dateOfBirth!.day}/${_dateOfBirth!.month}/${_dateOfBirth!.year}'
                        : 'Select date of birth',
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Gender
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: InputDecoration(
                  labelText: 'Gender *',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                items: ['Male', 'Female', 'Other'].map((gender) {
                  return DropdownMenuItem(value: gender, child: Text(gender));
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _gender = value;
                    });
                  }
                },
              ),
              SizedBox(height: 16),

              // Address
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address *',
                  hintText: 'Enter full address',
                  prefixIcon: Icon(Icons.location_on),
                  alignLabelWithHint: true,
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Medical History
              TextFormField(
                controller: _medicalHistoryController,
                decoration: InputDecoration(
                  labelText: 'Medical History',
                  hintText: 'Any pre-existing conditions',
                  prefixIcon: Icon(Icons.medical_services),
                  alignLabelWithHint: true,
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),

              // Auto Renew
              SwitchListTile(
                title: Text('Auto-Renew Subscription'),
                subtitle: Text(
                  'Automatically renew every month',
                  style: theme.textTheme.bodySmall,
                ),
                value: _isAutoRenew,
                onChanged: (value) {
                  setState(() {
                    _isAutoRenew = value;
                  });
                },
              ),
              SizedBox(height: 32),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isSubmitting ? null : _submitForm,
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
                      : Text('Add Insuree & Proceed to Payment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDateOfBirth() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(Duration(days: 365 * 30)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _dateOfBirth = picked;
      });
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_dateOfBirth == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please select date of birth'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      final age = DateTime.now().difference(_dateOfBirth!).inDays ~/ 365;

      final data = {
        'policyNumber': _policyNumberController.text,
        'fullName': _fullNameController.text,
        'email': _emailController.text,
        'phoneNumber': _phoneController.text.isNotEmpty
            ? _phoneController.text
            : null,
        'dateOfBirth': _dateOfBirth,
        'age': age,
        'gender': _gender,
        'address': _addressController.text,
        'medicalHistory': _medicalHistoryController.text.isNotEmpty
            ? _medicalHistoryController.text
            : null,
        'isAutoRenew': _isAutoRenew,
      };

      final datasource = ref.read(insureeDatasourceProvider);
      final insuree = await datasource.addInsuree(data);

      // Navigate to payment screen
      if (mounted) {
        context.go(RouteNames.insureeManagement);
        context.push(
          RouteNames.payment,
          extra: {
            'insureeIds': [insuree.id],
          },
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to add insuree'),
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
}
