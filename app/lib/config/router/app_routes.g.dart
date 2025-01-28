// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellRouteData,
      $loginRouteData,
      $createUserRouteData,
      $generatedResultRouteData,
      $quizPlayRouteData,
      $editInterestsRouteData,
      $editCatLevelRouteData,
      $mnemonicsDetailsRouteData,
    ];

RouteBase get $shellRouteData => StatefulShellRouteData.$route(
      factory: $ShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $HomeRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/mnemonics',
              factory: $MnemonicsRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/dummy',
              factory: $CenterRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/quiz',
              factory: $QuizRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: '/quiz-play',
                  factory: $QuizPlayRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $ShellRouteDataExtension on ShellRouteData {
  static ShellRouteData _fromState(GoRouterState state) =>
      const ShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MnemonicsRouteDataExtension on MnemonicsRouteData {
  static MnemonicsRouteData _fromState(GoRouterState state) =>
      const MnemonicsRouteData();

  String get location => GoRouteData.$location(
        '/mnemonics',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CenterRouteDataExtension on CenterRouteData {
  static CenterRouteData _fromState(GoRouterState state) =>
      const CenterRouteData();

  String get location => GoRouteData.$location(
        '/dummy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizRouteDataExtension on QuizRouteData {
  static QuizRouteData _fromState(GoRouterState state) => const QuizRouteData();

  String get location => GoRouteData.$location(
        '/quiz',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizPlayRouteDataExtension on QuizPlayRouteData {
  static QuizPlayRouteData _fromState(GoRouterState state) => QuizPlayRouteData(
        isOnlyUnmemorizeds:
            _$boolConverter(state.uri.queryParameters['is-only-unmemorizeds']!),
      );

  String get location => GoRouteData.$location(
        '/quiz-play',
        queryParams: {
          'is-only-unmemorizeds': isOnlyUnmemorizeds.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteDataExtension on SettingsRouteData {
  static SettingsRouteData _fromState(GoRouterState state) =>
      const SettingsRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $loginRouteData => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteDataExtension._fromState,
    );

extension $LoginRouteDataExtension on LoginRouteData {
  static LoginRouteData _fromState(GoRouterState state) =>
      const LoginRouteData();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createUserRouteData => GoRouteData.$route(
      path: '/create-user',
      factory: $CreateUserRouteDataExtension._fromState,
    );

extension $CreateUserRouteDataExtension on CreateUserRouteData {
  static CreateUserRouteData _fromState(GoRouterState state) =>
      const CreateUserRouteData();

  String get location => GoRouteData.$location(
        '/create-user',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $generatedResultRouteData => GoRouteData.$route(
      path: '/generated-result',
      factory: $GeneratedResultRouteDataExtension._fromState,
    );

extension $GeneratedResultRouteDataExtension on GeneratedResultRouteData {
  static GeneratedResultRouteData _fromState(GoRouterState state) =>
      GeneratedResultRouteData(
        state.extra as Mnemonic?,
      );

  String get location => GoRouteData.$location(
        '/generated-result',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $quizPlayRouteData => GoRouteData.$route(
      path: '/quiz-play',
      factory: $QuizPlayRouteDataExtension._fromState,
    );

RouteBase get $editInterestsRouteData => GoRouteData.$route(
      path: '/edit-interests',
      factory: $EditInterestsRouteDataExtension._fromState,
    );

extension $EditInterestsRouteDataExtension on EditInterestsRouteData {
  static EditInterestsRouteData _fromState(GoRouterState state) =>
      const EditInterestsRouteData();

  String get location => GoRouteData.$location(
        '/edit-interests',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editCatLevelRouteData => GoRouteData.$route(
      path: '/edit-cat-level',
      factory: $EditCatLevelRouteDataExtension._fromState,
    );

extension $EditCatLevelRouteDataExtension on EditCatLevelRouteData {
  static EditCatLevelRouteData _fromState(GoRouterState state) =>
      const EditCatLevelRouteData();

  String get location => GoRouteData.$location(
        '/edit-cat-level',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mnemonicsDetailsRouteData => GoRouteData.$route(
      path: '/mnemonics-details',
      factory: $MnemonicsDetailsRouteDataExtension._fromState,
    );

extension $MnemonicsDetailsRouteDataExtension on MnemonicsDetailsRouteData {
  static MnemonicsDetailsRouteData _fromState(GoRouterState state) =>
      MnemonicsDetailsRouteData(
        state.extra as MnemonicDetailPageExtra?,
      );

  String get location => GoRouteData.$location(
        '/mnemonics-details',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'953ece509e69f99ed8793f733a819fe19711fa5d';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<Raw<GoRouter>>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = AutoDisposeProviderRef<Raw<GoRouter>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
