import 'package:chat_app/features/home/presentation/pages/home_page.dart';
import 'package:chat_app/features/mnemonics/presentation/pages/mnemonics_page.dart';
import 'package:chat_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:chat_app/features/settings/presentation/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class MnemonicsBranchData extends StatefulShellBranchData {
  const MnemonicsBranchData();
}

class MnemonicsRouteData extends GoRouteData {
  const MnemonicsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MnemonicsPage();
}

class CenterBranchData extends StatefulShellBranchData {
  const CenterBranchData();
}

class CenterRouteData extends GoRouteData {
  const CenterRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => Container();
}

class QuizBranchData extends StatefulShellBranchData {
  const QuizBranchData();
}

class QuizRouteData extends GoRouteData {
  const QuizRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => const QuizPage();
}

class SettingsBranchData extends StatefulShellBranchData {
  const SettingsBranchData();
}

class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}
