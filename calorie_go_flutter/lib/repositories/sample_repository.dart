import 'package:calorie_go_flutter/constants.dart';

class SampleRepository {
  Future<String> getSampleData(String name) async {
    try {
      final response = await client.example.hello(name);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
