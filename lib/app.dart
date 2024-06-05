import 'package:easy_localization/easy_localization.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/router/app_router.dart';
import 'package:fixresume/core/init/themes/theme.dart';
import 'package:flutter/material.dart';

///Main application class
class App extends StatelessWidget {
  /// with the `key` parameter passed to the `MyApp` constructor.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      theme: getIt<AppTheme>().lightTheme,
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
    );
  }
}
