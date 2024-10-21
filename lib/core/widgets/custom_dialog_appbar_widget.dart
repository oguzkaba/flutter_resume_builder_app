import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// This class is likely used for routing within a Dart application.
class CustomDialogAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  /// Constructor for the `DialogAppBarWidget` class.
  const CustomDialogAppBarWidget({
    required this.title,
    this.onPressed,
    super.key,
  });

  /// The title of the dialog app bar.
  final String title;

  /// The onPressed function for the dialog app bar.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AppBar(
        title: Text(
          title,
          style: context.defaultSizeBold,
        ),
        leading: context.canPop()
            ? IconButton(
                onPressed: onPressed ?? () => context.pop(),
                icon: Icons.arrow_back.toIconDefaultColor,
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
