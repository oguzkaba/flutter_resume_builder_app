import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

/// This Dart class named ErrorView extends StatefulWidget.
class ErrorView extends StatelessWidget {
  /// In the provided Dart code snippet, the constructor `const ErrorView({super.key});` is defining a
  const ErrorView({super.key, this.goException, this.message});

  /// This line of code defines a final variable `goException` of type `GoException?`.
  final GoException? goException;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/error.json', height: 200, width: 200),
            Text(goException?.message ?? message ?? 'Error'),
          ],
        ),
      ),
    );
  }
}
