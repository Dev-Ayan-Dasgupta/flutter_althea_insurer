import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool autofocus;

  const CustomTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.enabled = true,
    this.readOnly = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.inputFormatters,
    this.validator,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField>
    with SingleTickerProviderStateMixin {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _obscureTextVisible = true;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
    _obscureTextVisible = widget.obscureText;
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    } else {
      _focusNode.removeListener(_onFocusChange);
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: theme.textTheme.labelLarge?.copyWith(
              color: _isFocused
                  ? AppColors.primarySteelBlue
                  : (isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary),
            ),
          ),
          SizedBox(height: 8),
        ],
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: _isFocused && widget.enabled
                ? [
                    BoxShadow(
                      color: AppColors.primarySteelBlue.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: TextFormField(
            controller: widget.controller,
            focusNode: _focusNode,
            autofocus: widget.autofocus,
            obscureText: _obscureTextVisible,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            onEditingComplete: widget.onEditingComplete,
            onFieldSubmitted: widget.onSubmitted,
            maxLines: _obscureTextVisible ? 1 : widget.maxLines,
            minLines: widget.minLines,
            maxLength: widget.maxLength,
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            inputFormatters: widget.inputFormatters,
            validator: widget.validator,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: widget.enabled
                  ? (isDark
                        ? AppColors.darkTextPrimary
                        : AppColors.lightTextPrimary)
                  : (isDark
                        ? AppColors.darkTextTertiary
                        : AppColors.lightTextTertiary),
            ),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: theme.textTheme.bodyLarge?.copyWith(
                color: isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary,
              ),
              errorText: widget.errorText,
              filled: true,
              fillColor: widget.enabled
                  ? (isDark ? AppColors.darkSurface : AppColors.lightSurface)
                  : (isDark
                        ? AppColors.darkSurfaceVariant
                        : AppColors.lightSurfaceVariant),
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 12, right: 8),
                      child: Icon(
                        widget.prefixIcon,
                        color: _isFocused
                            ? AppColors.primarySteelBlue
                            : (isDark
                                  ? AppColors.darkTextTertiary
                                  : AppColors.lightTextTertiary),
                        size: 20,
                      ),
                    )
                  : null,
              prefixIconConstraints: BoxConstraints(minWidth: 40),
              suffixIcon: _buildSuffixIcon(isDark),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.primarySteelBlue,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.error),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.error, width: 2),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              counterText: '',
            ),
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon(bool isDark) {
    if (widget.obscureText) {
      return IconButton(
        icon: Icon(
          _obscureTextVisible
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: _isFocused
              ? AppColors.primarySteelBlue
              : (isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary),
          size: 20,
        ),
        onPressed: () {
          setState(() {
            _obscureTextVisible = !_obscureTextVisible;
          });
        },
      );
    } else if (widget.suffixIcon != null) {
      return IconButton(
        icon: Icon(
          widget.suffixIcon,
          color: _isFocused
              ? AppColors.primarySteelBlue
              : (isDark
                    ? AppColors.darkTextTertiary
                    : AppColors.lightTextTertiary),
          size: 20,
        ),
        onPressed: widget.onSuffixIconTap,
      );
    }
    return null;
  }
}
