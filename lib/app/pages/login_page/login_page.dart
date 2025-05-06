import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/login_page/cubit/auth_cubit.dart";
import "package:cine_verse/app/pages/login_page/widget/login_page_body.dart";
import "package:cine_verse/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: false,
        body: BlocProvider(
            create: (_) => getIt<AuthCubit>(), child: const LoginPageBody()),
      );
}
