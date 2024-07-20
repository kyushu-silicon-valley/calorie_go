import 'package:calorie_go_server/prompt.dart';
import 'package:calorie_go_server/src/generated/protocol.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:serverpod/serverpod.dart';

class TicketEndpoint extends Endpoint {
  Future<GeneratedMonsters?> _generateNextImage(
    Session session,
    int currentUserId,
    String newFeature,
  ) async {
    // 新しい特徴をDbに保存する
    await UserMonsterFeature.db.insert(
      session,
      [
        UserMonsterFeature(
          userId: currentUserId,
          feature: newFeature,
        ),
      ],
    );

    // 既存の特徴を含め、すべての特徴を取得する
    final features = await UserMonsterFeature.db.find(
      session,
      where: (p0) => p0.userId.equals(currentUserId),
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
    final generatedImage1 = await OpenAI.instance.image.create(
      model: 'dall-e-3',
      prompt: prompt,
      n: 1,
      size: OpenAIImageSize.size1024,
      responseFormat: OpenAIImageResponseFormat.b64Json,
    );
    if (generatedImage1.data.length != 1) {
      return null;
    }

    final generatedImage2 = await OpenAI.instance.image.create(
      model: 'dall-e-3',
      prompt: prompt,
      n: 1,
      size: OpenAIImageSize.size1024,
      responseFormat: OpenAIImageResponseFormat.b64Json,
    );
    if (generatedImage1.data.length != 1) {
      return null;
    }

    final img1 = generatedImage1.data[0].b64Json ?? '';
    final img2 = generatedImage2.data[0].b64Json ?? '';

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
      generateUserId: currentUserId,
    );
  }

  Future<List<UsertTicket>> getMyTicker(Session session) async {
    if (!await session.isUserSignedIn) {
      return [];
    }

    final au = await session.authenticated;
    if (au == null) {
      return [];
    }

    final tickets = await UsertTicket.db.find(
      session,
      where: (p0) => p0.userId.equals(au.userId),
    );

    return tickets;
  }

  Future<GeneratedMonsters?> useTicket(
      Session session, int ticketId, String prompt) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }
    final tickets = await UsertTicket.db.find(
      session,
      where: (p0) => p0.id.equals(1),
      limit: 1,
    );
    if (tickets.isEmpty) return null;
    if (tickets.first.used) return null;
    print("OK");
    final monsterImages = await _generateNextImage(session, au.userId, prompt);
    print(monsterImages);
    return monsterImages;
  }

  Future<UsertTicket?> giveTicket(Session session, int userId) async {
    if (!await session.isUserSignedIn) {
      return null;
    }

    final au = await session.authenticated;
    if (au == null) {
      return null;
    }

    final ticket = await UsertTicket.db.insert(
      session,
      [
        UsertTicket(
          userId: userId,
          ticketMasterId: 1,
          used: false,
        ),
      ],
    );
    if (ticket.isEmpty) return null;
    return ticket.first;
  }
}
