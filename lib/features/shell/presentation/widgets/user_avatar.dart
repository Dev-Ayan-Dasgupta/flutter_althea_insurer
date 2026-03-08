import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class UserAvatar extends ConsumerWidget {
  final double size;
  final bool showOnlineIndicator;

  const UserAvatar({
    super.key,
    this.size = 40,
    this.showOnlineIndicator = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    if (user == null) {
      return _buildDefaultAvatar(context);
    }

    return Stack(
      children: [
        if (user.avatarUrl != null)
          CircleAvatar(
            radius: size / 2,
            backgroundImage: NetworkImage(user.avatarUrl!),
          )
        else
          _buildInitialsAvatar(context, user.name),

        if (showOnlineIndicator)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: size * 0.25,
              height: size * 0.25,
              decoration: BoxDecoration(
                color: AppColors.success,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.surface,
                  width: 2,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDefaultAvatar(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: AppColors.primarySteelBlue.withValues(alpha: 0.1),
      child: Icon(
        Icons.person_outline,
        size: size * 0.6,
        color: AppColors.primarySteelBlue,
      ),
    );
  }

  Widget _buildInitialsAvatar(BuildContext context, String name) {
    final initials = _getInitials(name);
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: AppColors.primarySteelBlue,
      child: Text(
        initials,
        style: TextStyle(
          fontSize: size * 0.4,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty) {
      return parts[0][0].toUpperCase();
    }
    return 'U';
  }
}
