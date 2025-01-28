# Goroにゃーん

packagename変更
```shell
dart run change_app_package_name:main com.goronyan.goronyan
```

コード生成
```shell
dart run build_runner build --delete-conflicting-outputs
```

Firebase設定ファイル作成
```bash
cd app
dart run flutterfire_cli:flutterfire configure
```

上記で生成されたファイルを下記の場所に保存
```bash
lib/config/environment/firebase_options_dev.dart
lib/config/environment/firebase_options_prod.dart
```

```bash
ios/firebase/dev/
ios/firebase/prod/に
firebaseからダウンロードしたGoogleService-Info.plistを保存。
```

```bash
android/src/firebase/dev/
android/src/firebase/prod/に
firebaseからダウンロードしたgoogle-services.jsonを保存。
```

下記のファイルのapiBaseUrlをCloud Functions for FirebaseのURLに変更する。
```
dart_defines/dev.env
dart_defines/prod.env
```

開発版アプリ起動
```
flutter run --dart-define-from-file=dart_defines/dev.env
```
