import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/app_constants.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:go_router/go_router.dart';

/// Custom Bottom App Bar Widget
class CustomBottomNavBarWidget extends StatelessWidget {
  /// Custom Bottom Navigation Bar Widget
  const CustomBottomNavBarWidget({
    required this.navigationShell,
    super.key,
  });

  ///  Navigation Shell
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final currentRouteNotifier =
        ValueNotifier<String?>(GoRouterState.of(context).matchedLocation);

    return ValueListenableBuilder(
      valueListenable: currentRouteNotifier,
      builder: (_, __, ___) => AnimatedCrossFade(
        crossFadeState: (currentRouteNotifier.value == '/settings/terms' ||
                currentRouteNotifier.value == '/settings/privacy' ||
                currentRouteNotifier.value == '/settings/premium')
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 500),
        firstChild: _firstChild(context),
        secondChild: _secondChild(context),
      ),
    );
  }

  Widget _secondChild(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: context.locale,
      child: BottomNavigationBar(
        selectedLabelStyle: context.defaultSizeBoldWithColor(
          ColorConstants.primaryColor,
        ),
        unselectedLabelStyle: TextStyle(
          color: ColorConstants.myMediumGrey,
        ),
        items: List.generate(
          3,
          (index) => _bottomNavBarItem(
            index: index,
            label: AppConstants().bottomNavigationLabels[index],
          ),
        ),
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
      ),
    );
  }

  BottomNavigationBarItem _bottomNavBarItem({
    required int index,
    required String label,
  }) {
    return BottomNavigationBarItem(
      activeIcon: AppConstants.bottomNavigationIconsActive[index]
          .toIconDefColorSized(30),
      icon: AppConstants.bottomNavigationIconsInactive[index]
          .toIconDefColorSized(30),
      label: label,
    );
  }

  SizedBox _firstChild(BuildContext context) {
    return const SizedBox.shrink();
  }
}
