import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/features/auth/login/presentation/views/login_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'extensions/mock_go_router.dart';

void main() {
  // Test the login view

  testWidgets('should redirect to family when clicking on tile',
      (tester) async {
    final mockGoRouter = MockGoRouter();

    await tester.pumpWidget(
      MaterialApp(
        home: MockGoRouterProvider(
          goRouter: mockGoRouter,
          child: const LoginView(),
        ),
      ),
    );

    await tester.tap(find.byType(FilledButton).first);
    await tester.pumpAndSettle();

    verify(() => mockGoRouter.go('/home')).called(1);
    verifyNever(() => mockGoRouter.go('/family/f2'));
  });
}
