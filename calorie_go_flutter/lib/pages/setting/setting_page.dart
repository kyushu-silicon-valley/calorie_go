import 'package:calorie_go_flutter/components/bottom_app_bar.dart';
import 'package:calorie_go_flutter/main.dart';
import 'package:calorie_go_flutter/pages/setting/setting_page_controller.dart';
//import 'package:calorie_go_flutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
//import 'package:flutter_hooks/flutter_hooks.dart';
//import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gendervalue = ref.watch(genderValueProvider);
    final thememode = useState<bool>(false);

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('設定'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 4/5,
          child: ListView(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'プロフィール情報',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 4/5,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'ニックネーム',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '性別',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.black,
                                        hoverColor: Colors.black,
                                        value: Gender.man,
                                        groupValue: gendervalue,
                                        onChanged: (val)  {
                                          final notifier = ref.read(genderValueProvider.notifier);
                                          notifier.state = Gender.man;
                                        },
                                      ),
                                      const Text(
                                        '男性',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]   
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.black,
                                        hoverColor: Colors.black,
                                        value: Gender.woman,
                                        groupValue: gendervalue,
                                        onChanged: (val)  {
                                          final notifier = ref.read(genderValueProvider.notifier);
                                          notifier.state = Gender.woman;
                                        },
                                      ),
                                      const Text(
                                        '女性',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]   
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: !thememode.value? Colors.black: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            onPressed: null,
                            child: Text(
                              '登録',
                              style: TextStyle(
                                color: !thememode.value? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'アプリ設定',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'ダークモード',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                CupertinoSwitch(
                                  value: thememode.value,
                                  onChanged: (value) {
                                    thememode.value = value;
                                    if (value){
                                      final notifier = ref.read(themeModeProvider.notifier);
                                      notifier.state = ThemeMode.dark;
                                    } else {
                                      final notifier = ref.read(themeModeProvider.notifier);
                                      notifier.state = ThemeMode.light;
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'シリアルコード',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '問い合わせ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'キャッシュ削除',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'ログアウトする',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '退会する',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}