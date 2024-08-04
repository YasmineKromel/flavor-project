import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorConfig {
  late String appTitle;
  late Map<Endpoints, String> apiEndpoint;
  late String imageLocation;
  late ThemeData theme;

  FlavorConfig();
}