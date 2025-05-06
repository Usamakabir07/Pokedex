import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/router/app_router.dart';
import 'app/themes/app_colors.dart';
import 'app/utils/constants/app_constants.dart';
import 'app/utils/hide_keyboard.dart';
import 'injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return _globalUnfocusKeyboard(
      context: context,
      child: MaterialApp.router(
        title: 'Pokédex',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.blackPearl,
          textTheme: ThemeData.light().textTheme.apply(
                bodyColor: AppColors.white,
                displayColor: AppColors.white,
              ),
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale(AppConstants.en),
          Locale(AppConstants.pl),
        ],
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}
