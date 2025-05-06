import 'package:cine_verse/app/common_widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../utils/dimensions.dart';

class SurpriseMeButton extends StatelessWidget {
  const SurpriseMeButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: padding40),
      child: AppElevatedButton(
        onPressed: onPressed,
        text: 'Surprise me!',
        width: MediaQuery.of(context).size.width * double03,
        color: AppColors.gamboge,
        border: Border.all(color: AppColors.white),
        isGradient: true,
      ),
    );
  }
}
