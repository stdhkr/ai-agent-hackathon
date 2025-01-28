import 'package:go_router/go_router.dart';

extension GoRouterLocation on GoRouter {
  /// Get the current location of the router.
  String get location {
    final lastMatch = routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
