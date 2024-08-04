
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  mainCommon(
    FlavorConfig()
      ..appTitle = "Beans Factory"
      ..apiEndpoint = {
        Endpoints.items: "random.api.dev/items",
        Endpoints.details: "random.api.dev/item"
      }
      ..imageLocation = "assets/images/coffee_bean.jpg"
      ..theme = ThemeData.light().copyWith(
        primaryColor: const Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: const Color(0xFF654321),
        ),
      ),
  );
}