import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/animated_page_indicator.dart';
import '../../../../core/router/route_names.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../widgets/onboarding_page_widget.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<_OnboardingData> _pages = [
    _OnboardingData(
      icon: Icons.dashboard_outlined,
      title: 'Real-Time Risk Monitoring',
      description:
          'Track your insured population health in real-time with our advanced cluster-based monitoring system.',
      color: AppColors.primarySteelBlue,
    ),
    _OnboardingData(
      icon: Icons.verified_user_outlined,
      title: 'Verified Care Events',
      description:
          'Every care event is verified with biometric handshakes and GPS tracking to ensure authenticity.',
      color: AppColors.success,
    ),
    _OnboardingData(
      icon: Icons.emergency_outlined,
      title: 'Instant Pre-Authorization',
      description:
          'Approve emergency care in seconds with live clinical data streaming from ambulances and hospitals.',
      color: AppColors.emergencyAmber,
    ),
    _OnboardingData(
      icon: Icons.analytics_outlined,
      title: 'Preventive Analytics',
      description:
          'Reduce claims by 30-40% through AI-powered risk predictions and preventive interventions.',
      color: AppColors.info,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Future<void> _completeOnboarding() async {
    await ref.read(onboardingNotifierProvider.notifier).completeOnboarding();

    if (mounted) {
      context.go(RouteNames.login);
    }
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _skipOnboarding() {
    _completeOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = screenSize.width >= 1024;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (_currentPage < _pages.length - 1)
                    CustomButton(
                      text: 'Skip',
                      onPressed: _skipOnboarding,
                      variant: CustomButtonVariant.text,
                      size: CustomButtonSize.small,
                    ),
                ],
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: isDesktop ? 600 : double.infinity,
                    ),
                    child: OnboardingPageWidget(
                      icon: page.icon,
                      title: page.title,
                      description: page.description,
                      iconColor: page.color,
                    ),
                  );
                },
              ),
            ),

            // Page Indicator
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: AnimatedPageIndicator(
                currentPage: _currentPage,
                pageCount: _pages.length,
              ),
            ),

            // Next/Get Started button
            Padding(
              padding: EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isDesktop ? 400 : double.infinity,
                ),
                child: CustomButton(
                  text: _currentPage < _pages.length - 1
                      ? 'Next'
                      : 'Get Started',
                  onPressed: _nextPage,
                  isFullWidth: true,
                  size: CustomButtonSize.large,
                  icon: _currentPage < _pages.length - 1
                      ? Icons.arrow_forward
                      : Icons.check,
                  iconOnRight: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingData {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  _OnboardingData({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });
}
