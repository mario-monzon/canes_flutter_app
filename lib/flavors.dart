enum Flavor {
  DEVELOPMENT,
  QA,
  UAT,
  PRODUCTION,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'Canes Dev';
      case Flavor.QA:
        return 'Canes QA';
      case Flavor.UAT:
        return 'Canes UAT';
      case Flavor.PRODUCTION:
        return 'Canes';
      default:
        return 'title';
    }
  }

}
