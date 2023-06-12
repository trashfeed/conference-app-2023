// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_debug.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $debugRoute,
    ];

RouteBase get $debugRoute => GoRouteData.$route(
      path: '/debug',
      factory: $DebugRouteExtension._fromState,
      parentNavigatorKey: DebugRoute.$parentNavigatorKey,
    );

extension $DebugRouteExtension on DebugRoute {
  static DebugRoute _fromState(GoRouterState state) => const DebugRoute();

  String get location => GoRouteData.$location(
        '/debug',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}