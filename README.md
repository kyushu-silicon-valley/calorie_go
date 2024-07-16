# Calorie GO

2024 年 OpenHackU FUKUOKA で開発するモバイルアプリケーション

# 開発の進め方

## 前提条件

- docker をインストールしていること
  - [docker のインストール](https://docs.docker.com/get-docker/)
- serverpod を有効化していること
  - `dart pub global activate serverpod_cli`コマンドを実行
  - [ドキュメント](https://docs.serverpod.dev/)

## 開発手順(for flutter)

1. サーバーを起動する

```
cd calorie_go_server
docker compose up --build --detach
dart bin/main.dart --apply-migrations
```

2. client で build_runner を起動する

```
cd calorie_go_flutter
make watch
```

3. flutter を起動する
   2 で使用したターミナルとは別のターミナルを開き、以下のコマンドを実行

```
cd calorie_go_flutter
flutter run
```

## 開発方法バックエンド

- `calorie_go_server`のコード生成

```
serverpod generate
```
