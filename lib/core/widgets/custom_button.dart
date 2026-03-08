import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../constants/app_colors.dart';

enum CustomButtonVariant { primary, secondary, outlined, text, danger }

enum CustomButtonSize { small, medium, large }

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final CustomButtonVariant variant;
  final CustomButtonSize size;
  final bool isLoading;
  final bool isFullWidth;
  final IconData? icon;
  final bool iconOnRight;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = CustomButtonVariant.primary,
    this.size = CustomButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
    this.iconOnRight = false,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: AppConstants.shortAnimation,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final buttonStyle = _getButtonStyle(theme, isDark);
    final textStyle = _getTextStyle(theme);
    final padding = _getPadding();

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(scale: _scaleAnimation.value, child: child);
      },
      child: GestureDetector(
        onTapDown: widget.onPressed != null && !widget.isLoading
            ? (_) {
                setState(() => _isPressed = true);
                _animationController.forward();
              }
            : null,
        onTapUp: widget.onPressed != null && !widget.isLoading
            ? (_) {
                setState(() => _isPressed = false);
                _animationController.reverse();
              }
            : null,
        onTapCancel: widget.onPressed != null && !widget.isLoading
            ? () {
                setState(() => _isPressed = false);
                _animationController.reverse();
              }
            : null,
        child: Container(
          width: widget.isFullWidth ? double.infinity : null,
          decoration: BoxDecoration(
            color: buttonStyle.backgroundColor,
            borderRadius: BorderRadius.circular(12),
            border: buttonStyle.border,
            boxShadow:
                widget.variant == CustomButtonVariant.primary && !_isPressed
                ? [
                    BoxShadow(
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.2),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onPressed != null && !widget.isLoading
                  ? widget.onPressed
                  : null,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: padding,
                child: widget.isLoading
                    ? _buildLoadingIndicator(buttonStyle.textColor)
                    : _buildContent(textStyle, buttonStyle.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(TextStyle textStyle, Color textColor) {
    final content = <Widget>[];

    if (widget.icon != null && !widget.iconOnRight) {
      content.add(Icon(widget.icon, size: _getIconSize(), color: textColor));
      content.add(SizedBox(width: 8));
    }

    content.add(Text(widget.text, style: textStyle.copyWith(color: textColor)));

    if (widget.icon != null && widget.iconOnRight) {
      content.add(SizedBox(width: 8));
      content.add(Icon(widget.icon, size: _getIconSize(), color: textColor));
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: content,
    );
  }

  Widget _buildLoadingIndicator(Color color) {
    return SizedBox(
      height: _getIconSize(),
      width: _getIconSize(),
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }

  _ButtonStyle _getButtonStyle(ThemeData theme, bool isDark) {
    switch (widget.variant) {
      case CustomButtonVariant.primary:
        return _ButtonStyle(
          backgroundColor: widget.onPressed == null
              ? (isDark ? AppColors.darkBorder : AppColors.lightBorder)
              : AppColors.primarySteelBlue,
          textColor: Colors.white,
        );
      case CustomButtonVariant.secondary:
        return _ButtonStyle(
          backgroundColor: widget.onPressed == null
              ? (isDark ? AppColors.darkBorder : AppColors.lightBorder)
              : AppColors.secondarySteelGrey,
          textColor: Colors.white,
        );
      case CustomButtonVariant.outlined:
        return _ButtonStyle(
          backgroundColor: Colors.transparent,
          textColor: widget.onPressed == null
              ? (isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary)
              : AppColors.primarySteelBlue,
          border: Border.all(
            color: widget.onPressed == null
                ? (isDark ? AppColors.darkBorder : AppColors.lightBorder)
                : AppColors.primarySteelBlue,
            width: 1.5,
          ),
        );
      case CustomButtonVariant.text:
        return _ButtonStyle(
          backgroundColor: Colors.transparent,
          textColor: widget.onPressed == null
              ? (isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary)
              : AppColors.primarySteelBlue,
        );
      case CustomButtonVariant.danger:
        return _ButtonStyle(
          backgroundColor: widget.onPressed == null
              ? (isDark ? AppColors.darkBorder : AppColors.lightBorder)
              : AppColors.error,
          textColor: Colors.white,
        );
    }
  }

  TextStyle _getTextStyle(ThemeData theme) {
    switch (widget.size) {
      case CustomButtonSize.small:
        return theme.textTheme.labelMedium!.copyWith(
          fontWeight: FontWeight.w600,
        );
      case CustomButtonSize.medium:
        return theme.textTheme.labelLarge!.copyWith(
          fontWeight: FontWeight.w600,
        );
      case CustomButtonSize.large:
        return theme.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w600,
        );
    }
  }

  EdgeInsets _getPadding() {
    switch (widget.size) {
      case CustomButtonSize.small:
        return EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case CustomButtonSize.medium:
        return EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case CustomButtonSize.large:
        return EdgeInsets.symmetric(horizontal: 32, vertical: 16);
    }
  }

  double _getIconSize() {
    switch (widget.size) {
      case CustomButtonSize.small:
        return 16;
      case CustomButtonSize.medium:
        return 20;
      case CustomButtonSize.large:
        return 24;
    }
  }
}

class _ButtonStyle {
  final Color backgroundColor;
  final Color textColor;
  final Border? border;

  _ButtonStyle({
    required this.backgroundColor,
    required this.textColor,
    this.border,
  });
}
