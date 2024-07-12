import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:health/health.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExercisePage extends HookConsumerWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _steps = useState<int?>(0);
    final Health health = Health();
    final isExercising = useState(false); // 運動中の状態を管理
    DateTime? startTime;
    DateTime? endTime;

    // HealthKitに歩数に関する権限をリクエストする
    useEffect(() {
      Future<void> requestHealthKitPermissions() async {
        final types = [
          HealthDataType.STEPS,
          // 他の必要なHealthDataTypeを追加
        ];

        final permissions = types.map((type) => HealthDataAccess.READ_WRITE).toList();

        bool requested = await health.requestAuthorization(types, permissions: permissions);
        print("HealthKit permissions requested: $requested");

        if (!requested) {
          print("HealthKit permissions not granted");
        }
      }

      requestHealthKitPermissions();
      return null;
    }, []);

    // ヘルスケアから歩数データを取得
    Future<void> fetchStepsData() async {
      // DateTime now = DateTime.now();
      // DateTime midnight = DateTime(now.year, now.month, now.day);
      // print("Now: $now , Midnight: $midnight");
      
    
      // 歩数を取得
      if (endTime != null && startTime != null) {
        print("StartTime: $startTime, EndTime: $endTime");
        int? steps = await health.getTotalStepsInInterval(endTime!, startTime!);
        print("Steps: $steps");
        _steps.value = steps;
      } 
    }

    // ヘルスケアに歩数データを書き込む
    Future<void> writeStepsData() async {
      DateTime now = DateTime.now();
      DateTime oneHourAgo = now.subtract(const Duration(hours: 1));

      int steps = 10;

      bool success = await health.writeHealthData(value: steps.toDouble(), type: HealthDataType.STEPS, startTime: oneHourAgo, endTime: now);

      if (success) {
        print("Successfully wrote steps data");
        fetchStepsData();  // 書き込み後にデータを取得して表示を更新
      } else {
        print("Failed to write steps data");
      }
    }

    // 運動中の状態を管理する関数
    void toggleExercise() {
      if (isExercising.value) {
        endTime = DateTime.now();
        print("運動終了: $endTime");
        isExercising.value = false;
      } else {
        startTime = DateTime.now();
        print("運動開始: $startTime");
        isExercising.value = true;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('運動'),
      ),
      body: Center(
          child: Text(
            'Steps: ${_steps.value}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: writeStepsData,
              tooltip: 'Write Steps',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                if (!isExercising.value) {
                  // isExercisingがfalseの場合、歩数データを取得
                  await fetchStepsData();
                }
                // 運動の状態を切り替え
                toggleExercise();
              },
              child: Text(
                isExercising.value ? "運動終了" : "運動開始",
              ),
            ),
            const SizedBox(height: 64),
          ],
        ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
