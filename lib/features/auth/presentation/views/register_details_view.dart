import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:flutter/material.dart';

class RegisterDetailsView extends StatelessWidget {
  const RegisterDetailsView({required this.user, super.key});
  final UserDetailsEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: GeneralUtil.profileImage(user),
            ),
            Text(user.currentUser.email ?? ''),
          ],
        ),
      ),
    );
  }
}
