import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import '../utils/dimensions.dart';

class AppTextField extends HookWidget {
  const AppTextField({
    required this.controller,
    super.key,
    this.hintText,
    this.textStyle,
    this.icon,
    this.showSuffixIcon = true,
    this.isPassword = false,
    this.validators = const <FormFieldValidator>[],
    this.onTap,
    this.maxLines = 1,
    this.initialValue,
    this.onChanged,
    this.focusNode,
    this.inputFormatters = const <TextInputFormatter>[],
    this.enableInteractiveSelection = true,
    this.minLines,
    this.readOnly,
    this.autofocus,
    this.obscureText = false,
    this.textInputType,
    this.suffixIcon,
    this.fillColor,
    this.borderStyle,
    this.prefixIcon,
    this.capitalization,
  });

  final TextCapitalization? capitalization;
  final String? hintText;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final IconData? icon;
  final bool showSuffixIcon;
  final bool? isPassword;
  final List<String? Function(String? value)> validators;
  final int? maxLines;
  final VoidCallback? onTap;
  final String? initialValue;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter> inputFormatters;
  final bool enableInteractiveSelection;
  final int? minLines;
  final bool? readOnly;
  final TextInputType? textInputType;
  final Color? fillColor;
  final OutlineInputBorder? borderStyle;

  final bool? autofocus;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> obscureText = useState(isPassword ?? true);
    final ValueNotifier<bool> isFocused = useState(false);
    final ValueNotifier<bool> isErrorState = useState(false);
    final FocusNode node = focusNode ?? useFocusNode();
    final hasInput = useState<bool>(false);
    useEffect(() {
      void handleFocusChange() {
        isFocused.value = node.hasFocus;
        if (controller.text.isEmpty) {
          isErrorState.value = false;
        }
      }

      void handleInput() {
        hasInput.value = controller.text.isNotEmpty;
        if (controller.text.isEmpty) {
          isErrorState.value = false;
        }
      }

      node.addListener(handleFocusChange);
      controller.addListener(handleInput);

      return () {
        node.removeListener(handleFocusChange);
        controller.removeListener(handleInput);
      };
    }, [node, controller]);

    return TextFormField(
      textCapitalization: capitalization ?? TextCapitalization.none,
      onTap: onTap,
      readOnly: readOnly ?? false,
      keyboardType: textInputType,
      minLines: minLines,
      style: AppStyles.bodyLarge,
      maxLines: maxLines,
      cursorColor: AppColors.blueGrey,
      focusNode: node,
      obscureText: obscureText.value,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      inputFormatters: inputFormatters,
      validator: (value) => _validate(
        isErrorState,
        isFocused,
        value,
      ),
      decoration: InputDecoration(
        hintStyle: AppStyles.bodyLarge.copyWith(
          color: AppColors.blueGrey,
        ),
        border: borderStyle ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius12),
              borderSide: const BorderSide(
                color: AppColors.blueGrey,
                width: width1,
              ),
            ),
        enabledBorder: borderStyle ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius12),
              borderSide: const BorderSide(
                color: AppColors.blueGrey,
                width: width1,
              ),
            ),
        focusedErrorBorder: borderStyle ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius12),
              borderSide: const BorderSide(
                color: AppColors.blueGrey,
                width: width1,
              ),
            ),
        focusedBorder: borderStyle ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius12),
              borderSide: const BorderSide(
                color: AppColors.blueGrey,
                width: width1,
              ),
            ),
        errorBorder: borderStyle ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius12),
              borderSide: const BorderSide(
                color: AppColors.redWine,
                width: width1,
              ),
            ),
        fillColor: fillColor ?? AppColors.blueGrey.withOpacity(double03),
        filled: true,
        contentPadding: const EdgeInsets.only(
          top: padding11,
          right: padding24,
          bottom: padding11,
          left: padding16,
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged ??
          (value) {
            isErrorState.value = false;
            if (value.isEmpty) {
              isErrorState.value = false;
            }
            if (onChanged != null) {
              onChanged!(value);
            }
          },
    );
  }

  String? _validate(
    ValueNotifier<bool> isErrorState,
    ValueNotifier<bool> isFocused,
    value,
  ) {
    isFocused.value = false;

    for (var validator in validators) {
      final validatorResult = validator(value);
      if (validatorResult != null) {
        isErrorState.value = true;
        return validatorResult;
      }
    }
    return null;
  }
}
