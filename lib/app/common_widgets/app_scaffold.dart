import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.actions,
    this.canGoBack = true,
    this.title,
    this.floatingActionButton,
    this.bottomPadding,
    this.onTap,
    this.backgroundColor,
    this.leadingIcon,
    this.showAppBar = true,
    this.avoidKeyboardMovingScaffold = true,
    this.floatingActionButtonLocation,
    this.extendBodyBehindAppBar = false,
    this.customAppBar,
    this.leadingIconColor,
    this.appBarHeight,
  });

  final Widget body;
  final bool canGoBack;
  final List<Widget>? actions;
  final Widget? title;
  final Widget? floatingActionButton;
  final double? bottomPadding;
  final VoidCallback? onTap;
  final bool avoidKeyboardMovingScaffold;
  final Color? backgroundColor;
  final Widget? leadingIcon;
  final bool showAppBar;
  final bool extendBodyBehindAppBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? customAppBar;
  final Color? leadingIconColor;
  final double? appBarHeight;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: floatingActionButtonLocation,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        backgroundColor: backgroundColor ?? AppColors.blackPearl,
        resizeToAvoidBottomInset: avoidKeyboardMovingScaffold,
        appBar: showAppBar
            ? AppBar(
                toolbarHeight: appBarHeight ?? height56,
                scrolledUnderElevation: elevation0,
                title: title,
                foregroundColor: AppColors.white,
                centerTitle: true,
                backgroundColor: backgroundColor ?? AppColors.blackPearl,
                elevation: elevation0,
                leading: leadingIcon ??
                    (canGoBack
                        ? Padding(
                            padding: const EdgeInsets.all(padding4),
                            child: InkWell(
                              borderRadius:
                                  BorderRadius.circular(borderRadius72),
                              onTap: onTap ?? context.router.maybePop,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: leadingIconColor ?? AppColors.white,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink()),
                actions: actions ?? [],
                actionsPadding: const EdgeInsets.only(right: padding12),
              )
            : null,
        body: SafeArea(child: body),
        floatingActionButton: floatingActionButton,
      );
}
