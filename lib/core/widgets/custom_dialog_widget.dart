import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';

class CustomDialogWidget {
  static void showCustomDialog({
    required BuildContext context,
    required VoidCallback onConfirm,
  }) {
    showDialog<Future<void>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          title: Text(LocaleKeys.dialogs_logout_title.locale(context)),
          content: Text(LocaleKeys.dialogs_logout_message.locale(context)),
          actions: <Widget>[
            TextButton(
              child: Text(LocaleKeys.dialogs_logout_confirm.locale(context)),
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(LocaleKeys.dialogs_logout_cancel.locale(context)),
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
