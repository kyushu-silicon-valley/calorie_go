# calorie_go_flutter

## 実行する (flutter run)
```
make dev
```

## コード生成を監視する
```
make watch
```

## コードを生成する（1回きり）
```
make build_runner
```

## クリーンビルドする（キャッシュを消してビルド）
```
make clean_build
```

## キャッシュを消す
```
make clean
```

## 画像やフォントのアセットを追加するとき
- `calorie_go_flutter/assets` ディレクトリに画像を追加する
- 画像を追加したディレクトリが`pubspec.yaml`に追加されていることを確認する(追加されていない場合は追加する)
- `make build_runner` でビルドする
- `lib/gen`にAssetsクラスが自動で生成されているので、このクラスを経由して画像を参照する