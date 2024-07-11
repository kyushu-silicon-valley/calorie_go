import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

import '../../constants.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorie Go'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInWithGoogleButton(
              caller: client.modules.auth,
              clientId: clientId,
              redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
              onFailure: () =>
                  throw Exception('Failed to sign in with Google.'),
              onSignedIn: () => context.go('/'),
            ),
          ],
        ),
      ),
    );
  }
}
