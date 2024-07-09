import 'package:calorie_go_flutter/pages/exercise/exercise_page.dart';
import 'package:calorie_go_flutter/pages/home/home_page.dart';
import 'package:calorie_go_flutter/pages/ranking/ranking.dart';
import 'package:calorie_go_flutter/pages/sample/sample_page.dart';
import 'package:calorie_go_flutter/pages/setting/setting_page.dart';
import 'package:calorie_go_flutter/pages/ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const HomePage(),
        );
      },
    ),
    GoRoute(
      path: '/exercise',
      name: 'exercise',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const ExercisePage(),
        );
      },
    ),
    GoRoute(
      path: '/ranking',
      name: 'ranking',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const RankingPage(),
        );
      },
    ),
    GoRoute(
      path: '/ticket',
      name: 'ticket',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const TicketPage(),
        );
      },
    ),
    GoRoute(
      path: '/setting',
      name: 'setting',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const SettingPage(),
        );
      },
    ),
    GoRoute(
      path: '/sample',
      name: 'sample',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const SamplePage(),
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
