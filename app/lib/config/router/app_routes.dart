import 'package:chat_app/config/router/branches/shell_route.dart';
import 'package:chat_app/config/router/codecs/extra_codec.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/features/auth/application/combined_auth_provider.dart';
import 'package:chat_app/features/auth/presentation/pages/login_page.dart';
import 'package:chat_app/features/generate/presentation/pages/generated_result_page.dart';
import 'package:chat_app/features/home/presentation/pages/home_page.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic_detail_page_extra.dart';
import 'package:chat_app/features/mnemonics/presentation/pages/mnemonics_details_page.dart';
import 'package:chat_app/features/mnemonics/presentation/pages/mnemonics_page.dart';
import 'package:chat_app/features/profile/presentation/pages/create_user_page.dart';
import 'package:chat_app/features/profile/presentation/pages/edit_cat_level_page.dart';
import 'package:chat_app/features/profile/presentation/pages/edit_interests_page.dart';
import 'package:chat_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:chat_app/features/quiz/presentation/pages/quiz_play_page.dart';
import 'package:chat_app/features/settings/presentation/pages/settings_page.dart';
import 'package:chat_app/features/shell/presentation/pages/shell_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';

const loginPagePath = LoginPage.pagePath;
const createUserPagePath = CreateUserPage.pagePath;

@riverpod
Raw<GoRouter> router(Ref ref) {
  final asyncValue = ref.watch(combinedAuthProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    extraCodec: const ExtraCodec(),
    redirect: (context, state) {
      if (asyncValue is AsyncLoading || asyncValue is AsyncError) {
        return null;
      }
      final combinedState = asyncValue.value;

      if (combinedState == null) {
        return null;
      }

      final fullPath = state.fullPath;

      // 未ログイン → loginPagePath
      if (!combinedState.isLoggedIn) {
        if (fullPath != loginPagePath) {
          return loginPagePath;
        } else {
          return null;
        }
      }

      // ログイン済だがプロフィール未完了 → createUserPagePath
      if (!combinedState.isProfileComplete) {
        if (fullPath != createUserPagePath) {
          return createUserPagePath;
        } else {
          return null;
        }
      }

      // それ以外 (ログイン&プロフィール完了) なのに loginPagePath や createUserPagePath にいるなら / へ
      if ([loginPagePath, createUserPagePath, '/loading']
          .contains(state.path)) {
        return '/';
      }

      return null;
    },
  );
}

@TypedStatefulShellRoute<ShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranchData>(
      routes: [
        TypedGoRoute<HomeRouteData>(path: HomePage.pagePath),
      ],
    ),
    TypedStatefulShellBranch<MnemonicsBranchData>(
      routes: [
        TypedGoRoute<MnemonicsRouteData>(path: MnemonicsPage.pagePath),
      ],
    ),
    TypedStatefulShellBranch<CenterBranchData>(
      routes: [
        // ダミー画面を1個置いておく
        TypedGoRoute<CenterRouteData>(path: '/dummy'),
      ],
    ),
    TypedStatefulShellBranch<QuizBranchData>(
      routes: [
        TypedGoRoute<QuizRouteData>(
          path: QuizPage.pagePath,
          routes: [
            TypedGoRoute<QuizPlayRouteData>(path: QuizPlayPage.pagePath),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranchData>(
      routes: [
        TypedGoRoute<SettingsRouteData>(
          path: SettingsPage.pagePath,
        ),
      ],
    ),
  ],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ShellPage(navigationShell: navigationShell);
  }
}

@TypedGoRoute<LoginRouteData>(
  path: loginPagePath,
)
class LoginRouteData extends GoRouteData {
  const LoginRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedGoRoute<CreateUserRouteData>(
  path: createUserPagePath,
)
class CreateUserRouteData extends GoRouteData {
  const CreateUserRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateUserPage();
  }
}

@TypedGoRoute<GeneratedResultRouteData>(
  path: GeneratedResultPage.pagePath,
)
class GeneratedResultRouteData extends GoRouteData {
  const GeneratedResultRouteData(this.$extra);

  final Mnemonic? $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if ($extra == null) {
      return const MaterialPage<void>(
        child: Scaffold(
          body: Center(
            child: Text('エラーが発生しました'),
          ),
        ),
      );
    }

    return MaterialPage<void>(
      fullscreenDialog: true,
      child: GeneratedResultPage(mnemonic: $extra!),
    );
  }
}

@TypedGoRoute<QuizPlayRouteData>(
  path: QuizPlayPage.pagePath,
)
class QuizPlayRouteData extends GoRouteData {
  const QuizPlayRouteData({
    required this.isOnlyUnmemorizeds,
  });

  final bool isOnlyUnmemorizeds;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      fullscreenDialog: true,
      canPop: false,
      child: QuizPlayPage(isOnlyUnmemorizeds: isOnlyUnmemorizeds),
    );
  }
}

@TypedGoRoute<EditInterestsRouteData>(
  path: EditInterestsPage.pagePath,
)
class EditInterestsRouteData extends GoRouteData {
  const EditInterestsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditInterestsPage();
}

@TypedGoRoute<EditCatLevelRouteData>(
  path: EditCatLevelPage.pagePath,
)
class EditCatLevelRouteData extends GoRouteData {
  const EditCatLevelRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditCatLevelPage();
}

@TypedGoRoute<MnemonicsDetailsRouteData>(
  path: MnemonicsDetailsPage.pagePath,
)
class MnemonicsDetailsRouteData extends GoRouteData {
  const MnemonicsDetailsRouteData(
    this.$extra,
  );

  final MnemonicDetailPageExtra? $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if ($extra == null) {
      return const MaterialPage<void>(
        child: Center(
          child: Text('エラーが発生しました'),
        ),
      );
    }
    return MaterialPage<void>(
      fullscreenDialog: true,
      child: MnemonicsDetailsPage(
        mnemonics: $extra!.mnemonics,
        initialIndex: $extra!.initialIndex,
      ),
    );
  }
}
