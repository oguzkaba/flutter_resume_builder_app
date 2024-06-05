import 'dart:io';

import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Custom Bottom Sheet Widget For Android and iOS
class CustomBottomSheetWidget {
  CustomBottomSheetWidget._init();

  static CustomBottomSheetWidget? _instance;

  /// Singleton instance of the CustomBottomSheetWidget
  // ignore: prefer_constructors_over_static_methods
  static CustomBottomSheetWidget get instance {
    _instance ??= CustomBottomSheetWidget._init();
    return _instance!;
  }

  /// This method is used to show the bottom sheet based on the platform.
  void show(BuildContext context) {
    if (Platform.isAndroid) {
      _androidBottomSheet(context);
    } else {
      _iOSBottomSheet(context);
    }
  }

  /// This method is used to show the bottom sheet based on the platform for Android.
  Future<dynamic> _androidBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      scrollControlDisabledMaxHeightRatio: 0.7,
      builder: (context) => BottomSheet(
        onClosing: () {},
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Share Resume',
              style: context.size14BoldWithColor(ColorConstants.primaryColor),
            ),
            context.verticalPaddingSmall,
            ListView(
              shrinkWrap: true,
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    leading: FontAwesomeIcons.envelope.toFaIconPrimaryColor,
                    title: const Text('Share via Email'),
                  ),
                  ListTile(
                    leading: FontAwesomeIcons.whatsapp.toFaIconPrimaryColor,
                    title: const Text('Share via WhatsApp'),
                  ),
                  ListTile(
                    leading: FontAwesomeIcons.linkedinIn.toFaIconPrimaryColor,
                    title: const Text('Share via LinkedIn'),
                  ),
                ],
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }

  /// This method is used to show the bottom sheet based on the platform for iOS.
  Future<dynamic> _iOSBottomSheet(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: const Text('Share Resume'),
        message: const Text('Share your resume with others'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {},
            child: const Text('Share via Email'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {},
            child: const Text('Share via WhatsApp'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {},
            child: const Text('Share via LinkedIn'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ),
    );
  }
}
