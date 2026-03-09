import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../providers/settings_provider.dart';
import '../widgets/settings_section.dart';
import '../widgets/preference_tile.dart';
import '../../domain/entities/user_profile_entity.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              profileAsync.whenData((profile) {
                _showEditProfileDialog(context, profile);
              });
            },
            tooltip: 'Edit Profile',
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(userProfileProvider);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: profileAsync.when(
            data: (UserProfileEntity profile) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Header
                Center(
                  child: Column(
                    children: [
                      // Avatar
                      _buildProfileAvatar(
                        context,
                        profile.fullName,
                        profile.avatarUrl,
                      ),
                      SizedBox(height: 16),
                      Text(
                        profile.fullName,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        profile.email,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: isDark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primarySteelBlue.withValues(
                            alpha: 0.1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _getRoleLabel(profile.role),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.primarySteelBlue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),

                // Bio Section
                if (profile.bio != null)
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.darkSurface
                          : AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isDark
                            ? AppColors.darkBorder
                            : AppColors.lightBorder,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 16,
                              color: AppColors.primarySteelBlue,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Bio',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(profile.bio!, style: theme.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                SizedBox(height: 24),

                // Personal Information
                SettingsSection(
                  title: 'Personal Information',
                  children: [
                    PreferenceTile(
                      icon: Icons.email,
                      title: 'Email',
                      subtitle: profile.email,
                    ),
                    if (profile.phoneNumber != null)
                      PreferenceTile(
                        icon: Icons.phone,
                        title: 'Phone',
                        subtitle: profile.phoneNumber!,
                      ),
                    if (profile.department != null)
                      PreferenceTile(
                        icon: Icons.business,
                        title: 'Department',
                        subtitle: profile.department!,
                      ),
                    if (profile.location != null)
                      PreferenceTile(
                        icon: Icons.location_on,
                        title: 'Location',
                        subtitle: profile.location!,
                      ),
                  ],
                ),

                // Account Details
                SettingsSection(
                  title: 'Account Details',
                  children: [
                    PreferenceTile(
                      icon: Icons.calendar_today,
                      title: 'Joined',
                      subtitle: profile.joinedDate.toFormattedString(),
                    ),
                    if (profile.lastLoginAt != null)
                      PreferenceTile(
                        icon: Icons.login,
                        title: 'Last Login',
                        subtitle: profile.lastLoginAt!.toRelativeString(),
                      ),
                    PreferenceTile(
                      icon: Icons.verified,
                      title: 'Status',
                      subtitle: profile.isActive ? 'Active' : 'Inactive',
                      trailing: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: profile.isActive
                              ? AppColors.success
                              : AppColors.error,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),

                // Preferences
                SettingsSection(
                  title: 'Preferences',
                  children: [
                    if (profile.timezone != null)
                      PreferenceTile(
                        icon: Icons.access_time,
                        title: 'Timezone',
                        subtitle: profile.timezone!,
                      ),
                    if (profile.language != null)
                      PreferenceTile(
                        icon: Icons.language,
                        title: 'Language',
                        subtitle: profile.language == 'en'
                            ? 'English'
                            : profile.language!,
                      ),
                  ],
                ),

                // Activity Stats
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primarySteelBlue,
                        AppColors.primarySteelBlue.withValues(alpha: 0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Account Age',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        _getAccountAge(profile.joinedDate),
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            loading: () => Column(
              children: [
                ShimmerCard(height: 120, width: 120, radius: 60),
                SizedBox(height: 16),
                ShimmerCard(height: 30, width: 200),
                SizedBox(height: 8),
                ShimmerCard(height: 20, width: 250),
                SizedBox(height: 32),
                ShimmerCard(height: 200),
                SizedBox(height: 16),
                ShimmerCard(height: 300),
              ],
            ),
            error: (error, stack) => _buildErrorCard(context, error),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileAvatar(
    BuildContext context,
    String fullName,
    String? avatarUrl,
  ) {
    final theme = Theme.of(context);
    final initials = _getInitials(fullName);
    const size = 120.0;

    return GestureDetector(
      onTap: () => _showAvatarOptions(context),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.primarySteelBlue,
              AppColors.primarySteelBlue.withValues(alpha: 0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(
            color: theme.brightness == Brightness.dark
                ? Colors.white.withValues(alpha: 0.2)
                : Colors.black.withValues(alpha: 0.1),
            width: 3,
          ),
        ),
        child: avatarUrl != null
            ? ClipOval(
                child: Image.network(
                  avatarUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Text(
                        initials,
                        style: theme.textTheme.displaySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    );
                  },
                ),
              )
            : Center(
                child: Text(
                  initials,
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty) {
      return parts[0][0].toUpperCase();
    }
    return '?';
  }

  String _getRoleLabel(UserRole role) {
    switch (role) {
      case UserRole.admin:
        return 'Administrator';
      case UserRole.manager:
        return 'Manager';
      case UserRole.analyst:
        return 'Analyst';
      case UserRole.operator:
        return 'Operator';
      case UserRole.viewer:
        return 'Viewer';
    }
  }

  String _getAccountAge(DateTime joinedDate) {
    final now = DateTime.now();
    final difference = now.difference(joinedDate);

    if (difference.inDays >= 365) {
      final years = (difference.inDays / 365).floor();
      return '$years ${years == 1 ? 'Year' : 'Years'}';
    } else if (difference.inDays >= 30) {
      final months = (difference.inDays / 30).floor();
      return '$months ${months == 1 ? 'Month' : 'Months'}';
    } else {
      return '${difference.inDays} ${difference.inDays == 1 ? 'Day' : 'Days'}';
    }
  }

  Widget _buildErrorCard(BuildContext context, Object error) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(Icons.error_outline, color: AppColors.error, size: 48),
          SizedBox(height: 16),
          Text(
            'Failed to load profile',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            error.toString(),
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _showAvatarOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.photo_camera),
              title: Text('Take Photo'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar(context, 'Camera feature coming soon');
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Choose from Gallery'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar(context, 'Gallery feature coming soon');
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Remove Photo'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar(context, 'Photo removed');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showEditProfileDialog(BuildContext context, UserProfileEntity profile) {
    final nameController = TextEditingController(text: profile.fullName);
    final phoneController = TextEditingController(text: profile.phoneNumber);
    final bioController = TextEditingController(text: profile.bio);
    final locationController = TextEditingController(text: profile.location);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Profile'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: locationController,
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: bioController,
                decoration: InputDecoration(
                  labelText: 'Bio',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, 'Profile updated successfully');
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
    );
  }
}
