import 'package:calorie_go_client/calorie_go_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class ClientIO {
  late Client client;

  static final ClientIO _instance = ClientIO._internal();

  factory ClientIO() {
    return _instance;
  }

  ClientIO._internal() {
    client = Client('http://$localhost:8080/')
      ..connectivityMonitor = FlutterConnectivityMonitor();
  }
}
