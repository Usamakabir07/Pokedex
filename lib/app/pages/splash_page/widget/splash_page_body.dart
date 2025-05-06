import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/app_progress_indicator.dart';
import '../../../router/app_router.dart';
import '../../login_page/cubit/auth_cubit.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedIn) {
          context.router.replace(const PokemonRoute());
        } else if (state is AuthLoggedOut) {
          context.router.replace(const LoginRoute());
        }
      },
      child: const Center(
        child: AppProgressIndicator(),
      ),
    );
  }
}
