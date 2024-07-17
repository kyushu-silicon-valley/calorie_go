import 'dart:math';

class PromptGenerator {
  final basePrompt =
      '# 状況\nあなたはゲームの可愛いキャラクターのイラストを作成することが求められています。あなたは与えられた指示に基づいてキャラクターの画像を作成してください。\n# 指示\n- 作成するキャラクターは架空の2Dキャラクターで、動物や人間などの生物の姿をしています\n- キャラクターは単なる生物ではなく、炎や水など様々な特殊能力を持っています。\n- 作成するイラストにはキャラクターに合った背景の画像を用いてください。\n- キャラクター以外の生物を描かないでください。\n- キャラクターは[#特徴]セクションにある外見上の特徴を持ちます。\n\n# 特徴\n';
  final elements = ["炎", "水", "氷", "風", "草", "土", "光", "雷", "闇"];
  final type = ["犬", "猫", "幽霊", "ドラゴン", "妖精", "魔法使い", "戦士", "天使", "うさぎ"];

  String createPrompt(List<String> features) {
    var res = basePrompt;
    for (final feature in features) {
      res += '- $feature\n';
    }
    return res;
  }

  String getFirstFeature() {
    final e = elements[Random(1).nextInt(elements.length)];
    final t = type[Random(21).nextInt(type.length)];
    final firstFeature = 'キャラクターは$eの能力を持つ$tです。';
    return firstFeature;
  }
}
