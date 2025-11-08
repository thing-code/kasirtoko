import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../features/product/presentation/pages/product_page.dart';
import '../../features/product/presentation/pages/stock_page.dart';
import '../../features/report/report_page.dart';
import '../../features/transaction/history_page.dart';
import '../core.dart';

enum COSRoutes {
  product('/product', 'Barang', SolarIconsOutline.widget_2, SolarIconsBold.widget_2),
  cart('/cart', 'Keranjang', SolarIconsOutline.bag3, SolarIconsBold.bag3),
  stock('/stock', 'Stok', SolarIconsOutline.chart, SolarIconsBold.chart),
  report('/report', 'Laporan', SolarIconsOutline.documentText, SolarIconsBold.documentText),
  history('/history', 'Riwayat', SolarIconsOutline.history, SolarIconsBold.history);

  final String route;
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const COSRoutes(this.route, this.label, this.icon, this.selectedIcon);
}

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SHELL');

final goRouterConfig = GoRouter(
  initialLocation: COSRoutes.product.route,
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      builder: (context, state, child) => COSBottomNavigation(state: state, child: child),
      routes: [
        GoRoute(path: COSRoutes.product.route, builder: (context, state) => ProductPage()),
        GoRoute(path: COSRoutes.history.route, builder: (context, state) => HistoryPage()),
        GoRoute(path: COSRoutes.stock.route, builder: (context, state) => StockPage()),
        GoRoute(path: COSRoutes.report.route, builder: (context, state) => ReportPage()),
      ],
    ),
  ],
);
