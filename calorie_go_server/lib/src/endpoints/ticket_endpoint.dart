import 'package:calorie_go_server/prompt.dart';
import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:serverpod/serverpod.dart';

class TicketEndpoint extends Endpoint {
  Future<GeneratedMonsters?> generateNextImage(
    Session session,
    String newFeature,
  ) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    // 新しい特徴をDbに保存する
    await UserMonsterFeature.db.insert(
      session,
      [
        UserMonsterFeature(
          userId: au.userId,
          feature: newFeature,
        ),
      ],
    );

    // 既存の特徴を含め、すべての特徴を取得する
    final features = await UserMonsterFeature.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    // 画像を生成するプロンプトを生成する
    final generator = PromptGenerator();
    final prompt = generator.createPrompt(
      features
          .map(
            (e) => e.feature,
          )
          .toList(),
    );

    // openAI APIを使って画像を生成する
    final generatedImage = await OpenAI.instance.image.create(
      model: 'dall-e-3',
      prompt: prompt,
      n: 2,
      size: OpenAIImageSize.size1024,
      responseFormat: OpenAIImageResponseFormat.b64Json,
    );
    if (generatedImage.data.length != 2) {
      return null;
    }

    final img1 = generatedImage.data[0].b64Json ?? '';
    final img2 = generatedImage.data[1].b64Json ?? '';

    // 生成した画像をdbに入れておく
    final monsterImages = await MonsterImage.db.insert(
      session,
      [
        MonsterImage(imageUrl: img1),
        MonsterImage(imageUrl: img2),
      ],
    );
    if (monsterImages.length != 2) return null;
    return GeneratedMonsters(
      img1: img1,
      img1Id: monsterImages[0].id!,
      img2: img2,
      img2Id: monsterImages[1].id!,
      generateUserId: au.userId,
    );
  }
}
