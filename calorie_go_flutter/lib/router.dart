import 'package:calorie_go_flutter/constants.dart';
import 'package:calorie_go_flutter/pages/exercise/exercise_page.dart';
import 'package:calorie_go_flutter/pages/exercise/reward_page.dart';
import 'package:calorie_go_flutter/pages/home/home_page.dart';
import 'package:calorie_go_flutter/pages/notice/notice_page.dart';
import 'package:calorie_go_flutter/pages/ranking/ranking.dart';
import 'package:calorie_go_flutter/pages/register/register.dart';
import 'package:calorie_go_flutter/pages/sample/sample_page.dart';
import 'package:calorie_go_flutter/pages/setting/setting_page.dart';
import 'package:calorie_go_flutter/pages/ticket/selectstyle_page.dart';
import 'package:calorie_go_flutter/pages/ticket/ticket_page.dart';
import 'package:calorie_go_flutter/pages/ticket/custom_page.dart';
import 'package:calorie_go_flutter/pages/top/top_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<T> buildTransitionPage<T>({
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
    transitionDuration: const Duration(milliseconds: 0),
  );
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/top',
      name: 'top',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const TopPage(),
      ),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: '/exercise',
      name: 'exercise',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const ExercisePage(),
      ),
      routes: [
        GoRoute(
          path: 'reward',
          name: 'reward',
          pageBuilder: (context, state) => buildTransitionPage(
            child: const RewardPage(),
          ),
        )
      ],
    ),
    GoRoute(
      path: '/ranking',
      name: 'ranking',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const RankingPage(),
      ),
    ),
    GoRoute(
      path: '/ticket',
      name: 'ticket',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const TicketPage(),
      ),
    ),
    GoRoute(
      path: '/custom',
      name: 'custom',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const CustomPage(),
      ),
    ),
    GoRoute(
      path: '/selectstyle',
      name: 'selectstyle',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const SelectStylePage(),
      ),
    ),
    GoRoute(
      path: '/setting',
      name: 'setting',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const SettingPage(),
      ),
    ),
    GoRoute(
      path: '/sample',
      name: 'sample',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const SamplePage(),
      ),
    ),
    GoRoute(
      path: '/notice',
      name: 'notice',
      pageBuilder: (context, state) => buildTransitionPage(
        child: const NoticePage(),
      ),
    ),
  ],
  redirect: (context, state) {
    if (sessionManager.signedInUser == null) {
      return '/top';
    } else {
      return null;
    }
  },
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
