import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";

import "../themes/app_colors.dart";

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({this.color, super.key});

  final Color? color;

  @override
  Widget build(BuildContext context) => Center(
        child: SpinKitFadingCircle(
          color: color ?? AppColors.gamboge,
        ),
      );
}
