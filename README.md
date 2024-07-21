# Calorie GO

2024 年 OpenHackU FUKUOKA で開発/発表したモバイルアプリケーション

ダイエットや運動を継続することが難しい人に、歩数に応じて自分がもつキャラクターカードを着せ替えられたり、歩数を競争してもらったりすることで、楽しく運動を続けてもらうスマホアプリ

## 資料
[当日展示スライド(GoogleSlide)](https://docs.google.com/presentation/d/11vOz8NjSVBLS8bzpT3z6ToJ21W5HYjtTyRRerLZD20s/edit?usp=sharing)
[当日発表スライド(GoogleSlide)](https://docs.google.com/presentation/d/1yFP_o7xEuhMrFRxbvqxbjeX_HqrTazoL7WHtEHlKQ_M/edit?usp=sharing)

[DB設計(DrawIO)](https://drive.google.com/file/d/1mqP5QjC2Z9bpwvjdTgEvvOcW6ezy0hXq/view?usp=sharing)

## 使用技術
- Flutter(dart)
- Serverpod(dart)
- psql
- docker
- Dall-e3 API

- git/github
- figma/figjam

## 実装した主要機能
- Googleログイン
- 歩数計測
- 画像生成(Dall-e3 API)


## 前提条件

- docker をインストールしていること
  - [docker のインストール](https://docs.docker.com/get-docker/)
- serverpod を有効化していること
  - `dart pub global activate serverpod_cli`コマンドを実行
  - [ドキュメント](https://docs.serverpod.dev/)

## 実行方法

アプリの実行にはOpenAIのAPIキーが必要です。`/calorie_go_server/.env.sample`を参考に`.env`を同ディレクトリに作成してください。
サーバーの起動
```
cd calorie_go_server
make dev
```

mobileの起動
```
cd calorie_go_flutter
make dev
```

