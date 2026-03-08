import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../../core/constants/app_colors.dart';

class RiskScoreGauge extends StatelessWidget {
  final double riskScore;
  final double size;

  const RiskScoreGauge({super.key, required this.riskScore, this.size = 120});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getColorFromScore(riskScore);

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background arc
          CustomPaint(
            size: Size(size, size),
            painter: _GaugePainter(
              progress: 1.0,
              color: color.withValues(alpha: 0.2),
              strokeWidth: 12,
            ),
          ),
          // Progress arc
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: riskScore / 100),
            duration: Duration(milliseconds: 1500),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return CustomPaint(
                size: Size(size, size),
                painter: _GaugePainter(
                  progress: value,
                  color: color,
                  strokeWidth: 12,
                ),
              );
            },
          ),
          // Score text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: riskScore),
                duration: Duration(milliseconds: 1500),
                curve: Curves.easeOutCubic,
                builder: (context, value, child) {
                  return Text(
                    value.toStringAsFixed(0),
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: color,
                      fontSize: size * 0.3,
                    ),
                  );
                },
              ),
              Text(
                'Risk Score',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getColorFromScore(double score) {
    if (score >= 80) return AppColors.riskCritical;
    if (score >= 60) return AppColors.riskHigh;
    if (score >= 40) return AppColors.riskModerate;
    return AppColors.riskLow;
  }
}

class _GaugePainter extends CustomPainter {
  final double progress;
  final Color color;
  final double strokeWidth;

  _GaugePainter({
    required this.progress,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;
    final startAngle = math.pi * 0.75;
    final sweepAngle = math.pi * 1.5 * progress;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_GaugePainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
