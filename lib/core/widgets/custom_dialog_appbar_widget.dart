import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:go_router/go_router.dart';

/// This class is likely used for routing within a Dart application.
class CustomDialogAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  /// Constructor for the `DialogAppBarWidget` class.
  const CustomDialogAppBarWidget({
    required this.title,
    super.key,
  });

  /// The title of the dialog app bar.
  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AppBar(
        title: Text(
          title,
          style: context.size18Bold,
        ),
        leading: IconButton(
          onPressed: () => context.goNamed(RoutesEnum.settings.name),
          icon: Icons.arrow_back.toIconDefaultColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
