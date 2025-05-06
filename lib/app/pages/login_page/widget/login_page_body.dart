import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/common_widgets/app_elevated_button.dart';
import 'package:cine_verse/app/router/app_router.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../common_widgets/app_text_field.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/validation.dart';
import '../cubit/auth_cubit.dart';

class LoginPageBody extends HookWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedIn) {
          context.router.replace(const PokemonRoute());
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(padding20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pokédex",
                  textAlign: TextAlign.center,
                  style: AppStyles.headlineMedium.copyWith(
                    color: AppColors.gamboge,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: height20),
                Text(
                  "Please login to start exploring",
                  textAlign: TextAlign.center,
                  style: AppStyles.titleSmallBold,
                ),
                const SizedBox(height: height30),
                AppTextField(
                  controller: usernameController,
                  hintText: 'username',
                  validators: [
                    Validators.isNotEmpty(
                      errorText: 'This field cannot be empty',
                    ),
                  ],
                ),
                const SizedBox(height: height20),
                AppTextField(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                  validators: [
                    Validators.isNotEmpty(
                      errorText: 'This field cannot be empty',
                    ),
                  ],
                ),
                const SizedBox(height: height20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot password?",
                        textAlign: TextAlign.left,
                        style: AppStyles.bodyMedium.copyWith(
                          color: AppColors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: height30),
                AppElevatedButton(
                  text: 'Log in',
                  color: AppColors.gamboge,
                  width: MediaQuery.of(context).size.width * double09,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final username = usernameController.text;
                      final password = passwordController.text;
                      context
                          .read<AuthCubit>()
                          .saveCredentials(username, password);
                    }
                  },
                ),
                const SizedBox(height: height30),
                Text(
                  "New user? Sign Up",
                  textAlign: TextAlign.center,
                  style: AppStyles.titleSmallBold,
                ),
                const SizedBox(height: height30),
                Text(
                  "By continuing, you agree to the Terms of Use. Read our Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyMedium.copyWith(
                    color: AppColors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
