import 'package:flutter/material.dart';
import 'package:kasirtoko/src/core/core.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: F.title,
      theme: COSThemes.lightTheme,
      routerConfig: goRouterConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
