import "package:cine_verse/app/themes/app_colors.dart";
import "package:flutter/material.dart";
import "../themes/app_styles.dart";
import "../utils/dimensions.dart";
import "app_elevated_button.dart";

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget(
      {required this.onRefresh, required this.errorText, super.key});

  final String errorText;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Spacer(),
            const Icon(
              Icons.signal_wifi_connected_no_internet_4_outlined,
              color: AppColors.boulder,
            ),
            Text(
              'Whoops! Something went wrong!',
              style: AppStyles.headLineSmall.copyWith(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: height32),
            Text(
              errorText,
              style: AppStyles.titleLarge.copyWith(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: height32),
            AppElevatedButton(
              border: Border.all(color: AppColors.primaryColor),
              color: AppColors.white,
              textColor: AppColors.primaryColor,
              onPressed: onRefresh,
              text: 'Please refresh!',
            ),
            const Spacer(),
          ],
        ),
      );
}
