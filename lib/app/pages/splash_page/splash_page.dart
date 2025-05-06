import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/pages/splash_page/widget/splash_page_body.dart';
import 'package:cine_verse/injectable/injectable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widgets/app_scaffold.dart';
import '../login_page/cubit/auth_cubit.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      canGoBack: false,
      body: BlocProvider(
        create: (_) => getIt<AuthCubit>()..loadCredentials(),
        child: const SplashPageBody(),
      ),
    );
  }
}
