import "package:flutter/material.dart";
import "../themes/app_colors.dart";
import "../themes/app_styles.dart";

class AppErrorTextWidget extends StatelessWidget {
  const AppErrorTextWidget({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.titleMedium.copyWith(
            fontFamily: proximaNovaStyle,
            color: AppColors.shuttleGrey,
          ),
        ),
      );
}
