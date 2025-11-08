enum Flavor { admin, user }

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.admin:
        return 'Kasko Admin';
      case Flavor.user:
        return 'Kasko';
      default:
        return 'title';
    }
  }
}
