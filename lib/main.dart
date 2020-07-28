import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'app.dart';
import 'flavors.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  F.appFlavor = Flavor.DEVELOPMENT;
  runApp(App());
}
