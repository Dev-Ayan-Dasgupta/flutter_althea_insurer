import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/extensions.dart';
import '../widgets/support_category_card.dart';

class HelpSupportScreen extends ConsumerStatefulWidget {
  const HelpSupportScreen({super.key});

  @override
  ConsumerState<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends ConsumerState<HelpSupportScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDesktop = context.isDesktop;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(isDesktop ? 24 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  Icons.help_center,
                  color: AppColors.primarySteelBlue,
                  size: 28,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Help & Support',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Find answers and get assistance',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.brightness == Brightness.dark
                              ? AppColors.darkTextSecondary
                              : AppColors.lightTextSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),

            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search FAQs, articles, and guides...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                          });
                        },
                      )
                    : null,
              ),
              onSubmitted: (query) {
                if (query.isNotEmpty) {
                  context.push('/faq', extra: {'search': query});
                }
              },
            ),
            SizedBox(height: 32),

            // Quick Actions
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: isDesktop ? 4 : 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: isDesktop ? 1.2 : 1.0,
              children: [
                SupportCategoryCard(
                  icon: Icons.question_answer,
                  title: 'FAQs',
                  description: 'Find quick answers to common questions',
                  color: AppColors.primarySteelBlue,
                  onTap: () {
                    context.push(RouteNames.faq);
                  },
                ),
                SupportCategoryCard(
                  icon: Icons.article,
                  title: 'Documentation',
                  description: 'Detailed guides and tutorials',
                  color: AppColors.info,
                  onTap: () {
                    _showComingSoon(context, 'Documentation');
                  },
                ),
                SupportCategoryCard(
                  icon: Icons.video_library,
                  title: 'Video Tutorials',
                  description: 'Watch step-by-step video guides',
                  color: AppColors.success,
                  onTap: () {
                    _showComingSoon(context, 'Video Tutorials');
                  },
                ),
                SupportCategoryCard(
                  icon: Icons.contact_support,
                  title: 'Contact Support',
                  description: 'Get help from our support team',
                  color: AppColors.warning,
                  onTap: () {
                    context.push(RouteNames.contactSupport);
                  },
                ),
              ],
            ),
            SizedBox(height: 32),

            // Popular Topics
            Text(
              'Popular Topics',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _TopicChip(
                  label: 'Getting Started',
                  onTap: () {
                    context.push(
                      RouteNames.faq,
                      extra: {'category': 'general'},
                    );
                  },
                ),
                _TopicChip(
                  label: 'Alert Management',
                  onTap: () {
                    context.push(RouteNames.faq, extra: {'category': 'alerts'});
                  },
                ),
                _TopicChip(
                  label: 'Fraud Detection',
                  onTap: () {
                    context.push(RouteNames.faq, extra: {'category': 'fraud'});
                  },
                ),
                _TopicChip(
                  label: 'Claims Process',
                  onTap: () {
                    context.push(RouteNames.faq, extra: {'category': 'claims'});
                  },
                ),
                _TopicChip(
                  label: 'Patient Management',
                  onTap: () {
                    context.push(
                      RouteNames.faq,
                      extra: {'category': 'patients'},
                    );
                  },
                ),
                _TopicChip(
                  label: 'Technical Support',
                  onTap: () {
                    context.push(
                      RouteNames.faq,
                      extra: {'category': 'technical'},
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 32),

            // Quick Links
            _QuickLinksSection(),
            SizedBox(height: 32),

            // Contact Information
            _ContactInfoSection(),
          ],
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context, String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$feature coming soon!'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

class _TopicChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _TopicChip({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ActionChip(
      label: Text(label),
      onPressed: onTap,
      backgroundColor: AppColors.primarySteelBlue.withValues(alpha: 0.1),
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: AppColors.primarySteelBlue,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _QuickLinksSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Links',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          _QuickLink(
            icon: Icons.book,
            title: 'User Manual',
            subtitle: 'Complete platform documentation',
            onTap: () {},
          ),
          _QuickLink(
            icon: Icons.update,
            title: 'Release Notes',
            subtitle: 'Latest updates and features',
            onTap: () {},
          ),
          _QuickLink(
            icon: Icons.api,
            title: 'API Documentation',
            subtitle: 'Integration guides for developers',
            onTap: () {},
          ),
          _QuickLink(
            icon: Icons.feedback,
            title: 'Send Feedback',
            subtitle: 'Help us improve the platform',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _QuickLink extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _QuickLink({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return ListTile(
      leading: Icon(icon, color: AppColors.primarySteelBlue),
      title: Text(
        title,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.bodySmall?.copyWith(
          color: isDark
              ? AppColors.darkTextSecondary
              : AppColors.lightTextSecondary,
        ),
      ),
      trailing: Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

class _ContactInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Need More Help?',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.email, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                'support@altheacare.com',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                '+91 1800-XXX-XXXX (Toll Free)',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.access_time, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                'Mon-Fri: 9:00 AM - 6:00 PM IST',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
