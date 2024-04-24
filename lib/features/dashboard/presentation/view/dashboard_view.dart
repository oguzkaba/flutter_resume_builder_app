// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/app_constants.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:go_router/go_router.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  BottomNavigationBar _bottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: context.primaryBold,
      unselectedLabelStyle: TextStyle(
        color: ColorConstants.myMediumGrey,
      ),
      items: List.generate(
        3,
        (index) => BottomNavigationBarItem(
          activeIcon: Icon(
            AppConstants.bottomNavigationIconsActive[index],
            size: 32,
          ),
          icon: Icon(
            AppConstants.bottomNavigationIconsInactive[index],
            size: 32,
          ),
          label: AppConstants.bottomNavigationLabels[index],
        ),
      ),
      currentIndex: navigationShell.currentIndex,
      onTap: navigationShell.goBranch,
    );
  }
}
