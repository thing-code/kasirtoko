import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirtoko/src/core/router/router.dart';

class COSBottomNavigation extends StatelessWidget {
  const COSBottomNavigation({super.key, required this.child, required this.state});

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex(state),
        onDestinationSelected: (index) => onDestinationSelected(index, context),
        destinations: [
          NavigationDestination(
            icon: Icon(COSRoutes.product.icon),
            selectedIcon: Icon(COSRoutes.product.selectedIcon),
            label: COSRoutes.product.label,
          ),
          NavigationDestination(
            icon: Icon(COSRoutes.stock.icon),
            selectedIcon: Icon(COSRoutes.stock.selectedIcon),
            label: COSRoutes.stock.label,
          ),
          NavigationDestination(
            icon: Icon(COSRoutes.history.icon),
            selectedIcon: Icon(COSRoutes.history.selectedIcon),
            label: COSRoutes.history.label,
          ),
          NavigationDestination(
            icon: Icon(COSRoutes.report.icon),
            selectedIcon: Icon(COSRoutes.report.selectedIcon),
            label: COSRoutes.report.label,
          ),
        ],
      ),
    );
  }

  int selectedIndex(GoRouterState state) {
    final String location = state.uri.toString();

    if (location == (COSRoutes.product.route)) {
      return 0;
    }
    if (location == (COSRoutes.stock.route)) {
      return 1;
    }
    if (location == (COSRoutes.history.route)) {
      return 2;
    }
    if (location == (COSRoutes.report.route)) {
      return 3;
    }
    return 0;
  }

  void onDestinationSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(COSRoutes.product.route);
      case 1:
        context.go(COSRoutes.stock.route);
      case 2:
        context.go(COSRoutes.history.route);
      case 3:
        context.go(COSRoutes.report.route);
    }
  }
}
