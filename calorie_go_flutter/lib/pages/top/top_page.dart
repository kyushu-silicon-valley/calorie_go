import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

import '../../constants.dart';
import '../../gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.top.topImage.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              _Header(),
              const Spacer(),
              SignInWithGoogleButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                ),
                caller: client.modules.auth,
                clientId: clientId,
                redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
                onFailure: () =>
                    throw Exception('Failed to sign in with Google.'),
                onSignedIn: () => _showDialog(context),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const SampleContent(),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(child: Assets.images.top.topLogo.image()),
        Text(
          '動いて競って育てよう！',
          style: GoogleFonts.bizUDPGothic(
            color: const Color(0xFF00008B),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: <Shadow>[
              const Shadow(
                color: Colors.grey,
                offset: Offset(5.0, 5.0),
                blurRadius: 3.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: RoutingConfig.home.path,
      name: RoutingConfig.home.name,
      pageBuilder: (_, __) => const MaterialPage(child: TopPage()),
    ),
  ],
);

enum RoutingConfig {
  home('/', 'home');

  final String path;
  final String name;

  const RoutingConfig(this.path, this.name);
}

class SampleContent extends StatelessWidget {
  const SampleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Sample Content'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
