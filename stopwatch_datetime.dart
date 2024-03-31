// stopwatch_stopwatchと同じ問題を解いているが、datetime関数はよく使うと思ったので、こちらを先に問題として、datetime関数を使って解いてもらいたい。

import 'dart:async';
import 'dart:io';
import 'dart:core';

void main() async {
  DateTime? startTime1;
  DateTime? startTime2;
  final lapTimes1 = <Duration>[];
  final lapTimes2 = <Duration>[];
  bool is_started = false;

  print("sを押して、ストップウォッチ１と２を開始してください。");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == 's' && is_started == false && startTime1 == null) {
      startTime1 = DateTime.now();
      startTime2 = DateTime.now();
      is_started = true;
      print('SW1,2が開始しました。');
      print('１を押すと、ストップウォッチ１のラップが記録され、２を押すと同様になります。');
    } else if (input == '1' && is_started == true && startTime1 != null) {
      lapTimes1.add(DateTime.now().difference(startTime1));
      print('SW1のラップを記録しました');
    } else if (input == '2' && is_started == true && startTime2 != null) {
      lapTimes2.add(DateTime.now().difference(startTime2));
      print('SWのラップを記録しました。');
    } else if (input == 'f' && is_started == true) {
      print('SWを止めました。');
      print('SW1のラップ: ${lapTimes1.map((d) => d.inSeconds)}');
      print('SW2のラップ: ${lapTimes2.map((d) => d.inSeconds)}');
      break;
    } else if (input != 's' && is_started == false) {
      print("sを打ち込んでください");
    } else {
      print("1,2,fを打ち込んでください");
    }
  }
}
