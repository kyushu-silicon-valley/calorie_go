import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../gen/assets.gen.dart';

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
                onSignedIn: () =>
                context.go('/register'),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
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
