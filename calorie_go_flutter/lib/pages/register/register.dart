import 'package:calorie_go_flutter/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  String _nickname = '';
  bool _isNicknameValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFE7DDC3),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                const _Header(),
                const Spacer(),
                _Name(
                  nickname: _nickname,
                  isNicknameValid: _isNicknameValid,
                  onNicknameChanged: (text) {
                    setState(() {
                      _nickname = text;
                      _isNicknameValid = text.isNotEmpty;
                    });
                  },
                ),
                const Spacer(),
                const _Gender(),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () async {
                    if (_isNicknameValid) {
                      await UserRepository().changeNickname(_nickname);
                      if (!context.mounted) return;
                      context.go('/');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('入力内容に誤りがあります。'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: const Text('登録'),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'あなたのプロフィールを\n教えてください',
          style: GoogleFonts.bizUDPGothic(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'ニックネームはアプリ内で他のユーザーに\n表示されます',
          style: GoogleFonts.bizUDPGothic(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _Name extends StatefulWidget {
  final ValueChanged<String> onNicknameChanged;

  const _Name({
    required this.onNicknameChanged,
    required String nickname,
    required bool isNicknameValid,
  });

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<_Name> {
  bool _isNicknameValid = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ニックネーム',
                  style: GoogleFonts.bizUDPGothic(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: '*',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 250,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextField(
              decoration: InputDecoration(
                hintText: '例 : ゴー太郎',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                errorText: _isNicknameValid ? null : '一文字以上入力してください',
              ),
              onChanged: (text) {
                bool isValid = text.isNotEmpty;
                setState(() {
                  _isNicknameValid = isValid;
                });
                widget.onNicknameChanged(text);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Gender extends StatefulWidget {
  const _Gender();

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<_Gender> {
  int _choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '性別',
          style: GoogleFonts.bizUDPGothic(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(
          spacing: 10,
          children: [
            ChoiceChip(
              label: const Text("男性"),
              selected: _choiceIndex == 0,
              backgroundColor: Colors.grey[600],
              selectedColor: Colors.white,
              onSelected: (selected) {
                setState(() {
                  _choiceIndex = selected ? 0 : -1;
                });
              },
            ),
            ChoiceChip(
              label: const Text("女性"),
              selected: _choiceIndex == 1,
              backgroundColor: Colors.grey[600],
              selectedColor: Colors.white,
              onSelected: (selected) {
                setState(() {
                  _choiceIndex = selected ? 1 : 0;
                });
              },
            ),
            ChoiceChip(
              label: const Text("その他"),
              selected: _choiceIndex == 2,
              backgroundColor: Colors.grey[600],
              selectedColor: Colors.white,
              onSelected: (selected) {
                setState(() {
                  _choiceIndex = selected ? 2 : 0;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
