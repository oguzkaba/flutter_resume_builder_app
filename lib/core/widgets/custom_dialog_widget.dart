import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';

class CustomDialogWidget {
  static void showCustomDialog({
    required BuildContext context,
    required VoidCallback onConfirm,
  }) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          title: Text(LocaleKeys.dialogs_logout_title.locale),
          content: Text(LocaleKeys.dialogs_logout_message.locale),
          actions: <Widget>[
            TextButton(
              child: Text(LocaleKeys.dialogs_logout_confirm.locale),
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(LocaleKeys.dialogs_logout_cancel.locale),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
