import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/init/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

/// This Dart class named MyApp extends StatelessWidget.
class MyApp extends StatelessWidget {
  /// with the `key` parameter passed to the `MyApp` constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2A84FF)),
      ),
      routerConfig: router,
    );
  }
}
