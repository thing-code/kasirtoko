import 'package:flutter/material.dart';

/// Extension for BuildContext
extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get scheme => theme.colorScheme;
  Size get size => MediaQuery.sizeOf(this);
}
