import 'package:calorie_go_flutter/repositories/api.dart';

class SampleRepository {
  Future<String> getSampleData(String name) async {
    final ins = ClientIO().client;

    final response = await ins.example.hello(name);
    return response;
  }
}
