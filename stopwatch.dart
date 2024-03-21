// 問題のイメージ
// 箱根駅伝
// 大三地区まで用意して、同意に走り出した大学の各地区のタイムを取りたい

import 'dart:async';
import 'dart:io';

void main() async {
  final stopwatch1 = Stopwatch();
  final stopwatch2 = Stopwatch();
  final lapTimes1 = <Duration>[];
  final lapTimes2 = <Duration>[];

  print("sを押して、ストップウォッチ１と２を開始してください。");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == 's') {
      stopwatch1.start();
      stopwatch2.start();
      print('SW1,2が開始しました。');
      print('１を押すと、ストップウォッチ１のラップが記録され、２を押すと同様になります。');
    } else if (input == '1') {
      lapTimes1.add(stopwatch1.elapsed);
      print('SW1のラップを記録しました');
    } else if (input == '2') {
      lapTimes2.add(stopwatch2.elapsed);
      print('SWのラップを記録しました。');
    } else if (input == 'f') {
      stopwatch1.stop();
      stopwatch2.stop();
      print('SWを止めました。');
      print('SW1のラップ: ${lapTimes1.map((d) => d.inSeconds)}');
      print('SW2のラップ: ${lapTimes2.map((d) => d.inSeconds)}');
      break;
    } else{
      print("s,1,2,fを打ち込んでください");
    }
  }
}

// stopwatchクラスを使っている。
// elapsedで処理までにかかった時間がわかる。

// 時間が早かった人用にreset
// stopwatch.reset();というのがあって、時間をリセットできる。
// データベースで使った、要素の抽出を使っているので、できればそれよりも後にできるようにしたい

// 特徴
// startWatchという便利な機能があるという紹介

// 問題点
// 外部ライブラリ、非同期処理、データベースも使っていない。