import 'package:fixresume/features/dashboard/presentation/widgets/custom_bottom_navbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavBarWidget(
        navigationShell: navigationShell,
      ),
    );
  }
}
