// 打ち込んだ日本語を外部ライブラリを用いて、英語に翻訳してみよう

// 目的
// APIキーを使う前の前座
// または、APIキーの方を書いた後、こんな方法もあるよという紹介
// APIキーを用いた方が演習になるので、後者の方がいいのかなと


import 'dart:io';
import 'dart:async';
import 'package:translator/translator.dart';

void main() {
  print('Welcome to the chat app!');
  print('Please enter your message:');

  // 非同期でユーザーからの入力を待つ
  Future(() async {
    String? message = stdin.readLineSync();
    if (message != null && message.isNotEmpty) {
      print('$messageを翻訳しています・・・');

      // 非同期でレスポンスを生成する
      Future.delayed(Duration(seconds: 0), () async {
        final translator = GoogleTranslator();
        final translation = await translator.translate(message, to: 'en');
        print('翻訳: ${translation.text}');
      });
    }
  });
}

// APIキーを用いたプログラムを後日書きます。