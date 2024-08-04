import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'flavor_config.dart';
// Define the provider for FlavorConfig
final flavorConfigProvider = Provider<FlavorConfig>((ref) {
  throw UnimplementedError(); // This will be overridden in `mainCommon`
});
void mainCommon(FlavorConfig config) {
  // Override the provider with the actual config
  final container = ProviderContainer(overrides: [
    flavorConfigProvider.overrideWithValue(config),
  ]);
  runApp(ProviderScope(
    parent: container,
    child: const MyApp(),
  ));
}
class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the FlavorConfig using ref.read
    final flavorConfig = ref.watch(flavorConfigProvider);
    return MaterialApp(
      title: flavorConfig.appTitle,
      theme: flavorConfig.theme,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the FlavorConfig using ref.read
    final flavorConfig = ref.watch(flavorConfigProvider);
    print(flavorConfig.appTitle);
    return Scaffold(
      appBar: AppBar(
        title: Text(flavorConfig.appTitle),
      ),
      body: Image.asset(
        flavorConfig.imageLocation,
        fit: BoxFit.cover,
      ),
    );
  }
}