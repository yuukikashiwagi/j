// 打ち込んだ日本語を外部ライブラリを用いて、英語に翻訳してみよう

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
        // var client = await clientViaApplicationDefaultCredentials(
        //     scopes: ['https://www.googleapis.com/auth/cloud-platform']);
        // var api = TranslateApi(client);
        // var response = await api.translations
        //     .list(['Received your message!'], target: 'ja');  // 翻訳先の言語を設定
        // print('Bot: ${response.translations!.first.translatedText}');
      });
    }
  });
}