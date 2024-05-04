// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_filledbutton_widget.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('RegisterView'),
            CustomFilledButtonWidget(
              buttonText: 'goto login',
              onPressed: () => context.goNamed(RoutesEnum.login.name),
            ),
          ],
        ),
      ),
    );
  }
}
