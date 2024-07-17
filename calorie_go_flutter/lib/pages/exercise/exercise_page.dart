import 'dart:async'; // Timerを使用するために必要

import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/providers/current_tab_index_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:health/health.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final stepCountProvider = StateProvider<int?>((ref) => 0); // 歩数を管理する変数

class ExercisePage extends HookConsumerWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Health health = Health();
    final stepCount = ref.watch(stepCountProvider); // 歩数を管理する変数(画面に表示される)
    final exerciseState = ref.watch(exerciseStateProvider); // 運動中の状態を管理する変数
    const int rewardStepCount = 10; // チケットを獲得する歩数の閾値

    final isMonitoring = useState(false); // 監視状態を管理するためのuseState


    // HealthKitに歩数に関する権限をリクエストする
    useEffect(() {
      Future<void> requestHealthKitPermissions() async {
        final types = [
          HealthDataType.STEPS,
          // 他の必要なHealthDataTypeを追加
        ];

        final permissions =
            types.map((type) => HealthDataAccess.READ_WRITE).toList();

        bool requested =
            await health.requestAuthorization(types, permissions: permissions);
        if (kDebugMode) {
          print("HealthKit permissions requested: $requested");
        }

        if (!requested) {
          if (kDebugMode) {
            print("HealthKit permissions not granted");
          }
        }
      }

      requestHealthKitPermissions();
      return null;
    }, []);

    // ヘルスケアから歩数データを取得
    Future<void> fetchStepsData(DateTime endTime) async {
      int? steps = await health.getTotalStepsInInterval(
        DateTime(2024,07,16,18,0,0),
        DateTime(2024,07,16,18,45,0),
      );
      ref.read(stepCountProvider.notifier).state = steps ?? 0;
    }
    // 歩数の変更を監視する関数
    useEffect(() {
      Timer? stepsSubscription;
      if (isMonitoring.value) {
        // 監視が有効な場合、タイマーを開始
        stepsSubscription =
            Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
          await fetchStepsData(DateTime.now());
        });
      }
      return () => stepsSubscription?.cancel(); // コンポーネントがアンマウントされる時にタイマーをキャンセル
    }, [isMonitoring.value]); // isMonitoringの値が変更された時にのみuseEffectを再実行

    // 運動結果を表示する関数
    void showExerciseResult(BuildContext context, int stepCount) {
      if (stepCount > rewardStepCount) {
        // stepCountがrewardStepCountを超える場合のダイアログ
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(height: 8),
                    Text(
                      "チケット獲得",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              content: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("おめでとうございます！"),
                    SizedBox(height: 4),
                    Text("チケットを獲得しました"),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  child: const Text("報酬を受け取る"),
                  onPressed: () {
                    Navigator.of(context).pop(); // ダイアログを閉じる
                    ref.read(stepCountProvider.notifier).state = 0;
                    context.go('/exercise/reward'); // 報酬ページに遷移
                  },
                ),
              ],
            );
          },
        );
      } else {
        // stepCountがrewardStepCountを超えていない場合のダイアログ
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_walk, color: Colors.red),
                    SizedBox(height: 8),
                    Text(
                      "目標まであと少し！",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              content: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("チケット獲得まで"),
                    const SizedBox(height: 4),
                    Text("${rewardStepCount - stepCount}歩",
                        style: const TextStyle(fontSize: 32)),
                    const SizedBox(height: 4),
                    const Text("引き続き頑張りましょう！"),
                    const SizedBox(height: 8),
                    const Text("運動を続けますか？"),
                  ],
                ),
              ),
              actions: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // ボタン間のスペースを均等にする
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        child: const Text("続ける"),
                        onPressed: () {
                          Navigator.of(context).pop(); // ダイアログを閉じ、運動を続ける
                          currentBottomTabIndex.change(1);
                          isMonitoring.value = true;
                        },
                      ),
                    ),
                    const SizedBox(width: 8), // ボタンの間にスペースを追加
                    Flexible(
                      child: ElevatedButton(
                        child: const Text("終了する"),
                        onPressed: () {
                          // ここに運動を終了する処理を追加
                          Navigator.of(context).pop(); // ダイアログを閉じる
                          currentBottomTabIndex.change(1);
                          ref.read(stepCountProvider.notifier).state = 0;
                          ref.read(exerciseStateProvider.notifier).state =
                              ExerciseState.finished;
                          context.go('/exercise');
                          // 運動状態を更新する処理をここに追加
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      }
    }

    // 運動中の状態を管理する関数
    void toggleExercise() {
      switch (exerciseState) {
        case ExerciseState.finished:
          // 運動開始処理
          ref.read(startTimeProvider.notifier).state = DateTime.now();
          ref.read(stepCountProvider.notifier).state = 0; // 歩数をリセット
          // startMonitoringSteps(); // 運動開始時に歩数の監視を開始
          isMonitoring.value = true;
          ref.read(exerciseStateProvider.notifier).state =
              ExerciseState.started;
          break;
        case ExerciseState.started:
          // 運動終了処理
          ref.read(endTimeProvider.notifier).state = DateTime.now();
          showExerciseResult(context, stepCount!);
          // stopMonitoringSteps(); // 運動終了時に歩数の監視を停止
          isMonitoring.value = false;
          if (stepCount > rewardStepCount) {
            ref.read(exerciseStateProvider.notifier).state =
                ExerciseState.finished;
          }
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('運動')),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('現在の歩数', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 32), // テキストと歩数の間の間隔を設定
                Row(
                  mainAxisSize: MainAxisSize.min, // 必要最小限の幅を使用
                  children: [
                    Text('${stepCount ?? 0}',
                        style: const TextStyle(fontSize: 64)),
                    const Text(' 歩',
                        style: TextStyle(fontSize: 24)), // "歩"の文字の大きさを小さく設定
                  ],
                ),
                const SizedBox(height: 64), //ボタン間の間隔を設定
              ],
            ),
          ),
          Positioned(
            right: 16, // 右から16の位置
            bottom: 32, // 下から16の位置
            child: ElevatedButton(
              onPressed: () {
                toggleExercise();
              },
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(150, 60)),
                padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
                shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                )),
                backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 94, 233, 99)),
                foregroundColor: WidgetStateProperty.all(Colors.black),
                textStyle: WidgetStateProperty.all(const TextStyle(
                  fontWeight: FontWeight.bold, // 文字を太くする
                )),
              ),
              child: Text(
                exerciseState == ExerciseState.finished ? "運動開始" : "運動終了",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: exerciseState == ExerciseState.finished
          ? const AppBottomNavigationBar()
          : null,
    );
  }
}
