import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import '../utils/dimensions.dart';
import 'app_progress_indicator.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.text,
    super.key,
    this.isLoading = false,
    this.width,
    this.textColor,
    this.textSize,
    this.onPressed,
    this.color,
    this.border,
    this.fontWeight,
    this.prefixIcon,
    this.prefixIconColor,
    this.isGradient = false,
    this.onlyOutline = false,
    this.isActive = true,
    this.loadingColor,
    this.suffixIcon,
  });
  final String text;
  final bool isLoading;
  final bool? isGradient;
  final double? width;
  final Color? textColor;
  final double? textSize;
  final VoidCallback? onPressed;

  final Color? color;
  final Border? border;
  final FontWeight? fontWeight;
  final String? prefixIcon;
  final Color? prefixIconColor;
  final String? suffixIcon;
  final bool onlyOutline;
  final bool isActive;

  final Color? loadingColor;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(borderRadius12),
        onTap: isLoading || !isActive ? () {} : onPressed,
        child: Container(
          height: height50,
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            border: onlyOutline
                ? Border.all(
                    width: width1,
                    color: color ?? AppColors.primaryColor,
                  )
                : border,
            color: isActive
                ? onlyOutline
                    ? AppColors.white
                    : color ?? AppColors.primaryColor
                : AppColors.roofJungleGreen,
            borderRadius: BorderRadius.circular(borderRadius12),
          ),
          child: Center(
            child: isLoading
                ? AppProgressIndicator(
                    color: loadingColor ??
                        (onlyOutline
                            ? AppColors.primaryColor
                            : AppColors.white))
                : prefixIcon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(prefixIcon!,
                              color: prefixIconColor ?? AppColors.primaryColor),
                          const SizedBox(width: width10),
                          Row(
                            children: <Widget>[
                              Text(
                                text,
                                textAlign: TextAlign.center,
                                style: AppStyles.labelLarge.copyWith(
                                  color: isActive
                                      ? onlyOutline
                                          ? textColor ?? AppColors.primaryColor
                                          : textColor ?? AppColors.white
                                      : AppColors.paleSky,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            textAlign: TextAlign.center,
                            style: AppStyles.labelLarge.copyWith(
                              color: isActive
                                  ? onlyOutline
                                      ? textColor ?? AppColors.primaryColor
                                      : textColor ?? AppColors.white
                                  : AppColors.paleSky,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              const SizedBox(width: width10),
                              suffixIcon != null
                                  ? SvgPicture.asset(
                                      suffixIcon!,
                                      color: AppColors.white,
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          )
                        ],
                      ),
          ),
        ),
      );
}
