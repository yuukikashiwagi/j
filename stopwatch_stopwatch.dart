// 問題のイメージ
// 箱根駅伝
// 大三地区まで用意して、同意に走り出した大学の各地区のタイムを取りたい

// 2つのストップウォッチを同時に操作するプログラムを作成しよう。
// 各ストップウォッチは次のように動くようにしてください

// ストップウォッチの開始
// ラップタイムの記録
// ストップウォッチの停止
// ユーザーは以下のコマンドを入力することでストップウォッチを操作します：

// 's'：2つのストップウォッチを開始する。
// '1'：ストップウォッチ1の現在のラップタイムを記録する。
// '2'：ストップウォッチ2の現在のラップタイムを記録する。
// 'f'：2つのストップウォッチを停止し、それぞれのラップタイムのリストを表示してください。
// このプログラムをDart言語で実装してください。

// 問題目的
// 外部ライブラリAPIみたいなめっちゃ外部みたいなもの以外にもクラスベースビューみたいなもう少し身近なものもあるよという紹介

// どういうライブラリが使えるか探してもらう
// 問１　ストップウォッチをライブラリを用いて、実装してみよう
// 問２　二つのストップウォッチを同時に使えるようにしてみよう
import 'dart:async';
import 'dart:io';

void main() async {
  final stopwatch1 = Stopwatch();
  final stopwatch2 = Stopwatch();
  final lapTimes1 = <Duration>[];
  final lapTimes2 = <Duration>[];
  bool is_started = false;

  print("sを押して、ストップウォッチ１と２を開始してください。");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == 's') {
      stopwatch1.start();
      stopwatch2.start();
      print('SW1,2が開始しました。');
      print('１を押すと、ストップウォッチ１のラップが記録され、２を押すと同様になります。');
      is_started = true;
    } else if (input == '1' && is_started == true) {
      lapTimes1.add(stopwatch1.elapsed);
      print('SW1のラップを記録しました');
    } else if (input != 's' && is_started == false) {
      print('sを押して、ストップウォッチを開始してください。');
    } else if (input == '2' && is_started == true) {
      lapTimes2.add(stopwatch2.elapsed);
      print('SWのラップを記録しました。');
    } else if (input == '2' && is_started == false) {
      print('sを押して、ストップウォッチを開始してください。');
    } else if (input == 'f' && is_started == true) {
      stopwatch1.stop();
      stopwatch2.stop();
      print('SWを止めました。');
      print('SW1のラップ: ${lapTimes1.map((d) => d.inSeconds)}');
      print('SW2のラップ: ${lapTimes2.map((d) => d.inSeconds)}');
      break;
    }  else {
      print("1,2,fを打ち込んでください");
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


