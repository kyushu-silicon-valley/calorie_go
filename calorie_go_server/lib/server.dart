import 'package:dotenv/dotenv.dart';
import 'package:serverpod/serverpod.dart';

import 'package:calorie_go_server/src/web/routes/root.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;
import 'package:dart_openai/dart_openai.dart';

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  auth.AuthConfig.set(auth.AuthConfig(
    minPasswordLength: 7,
  ));

  pod.webServer.addRoute(auth.RouteGoogleSignIn(), '/googlesignin');

  // load env
  final env = DotEnv(includePlatformEnvironment: true)..load(['.env']);
  final openAIKey = env['OPENAI_API_KEY'];
  OpenAI.apiKey = openAIKey ?? '';
  OpenAI.requestsTimeOut = Duration(seconds: 60);

  // Start the server.
  await pod.start();
}
