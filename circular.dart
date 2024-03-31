// 回文かどうか判断する関数を書いてみよう
// 問１　for文を使って、書いてみよう
// 問２　for文を使わない方法を考えて、書いてみよう

import 'dart:io';

void main() {
  print('文字を入力してください。');
  String? input = stdin.readLineSync();
  if (input != null) {
    print("問１の答えは、${isPalindrome(input)}です。");
  }
}
// 解答１
bool isPalindromeFor(String str) {
  for (int i = 0; i < str.length ~/ 2; i++) {
    if (str[i] != str[str.length - i - 1]) {
      return false;
    }
  }
  return true;
}
// 解答２
bool isPalindrome(String str) {
  String reversedStr = str.split('').reversed.join('');
  return str == reversedStr;
}


// ヒント
// 小数点以下の切り捨て　〜
// forぶんを用いて、後ろからと前からで比べていく

// 別解
// はじめに全部ひっくり返してから同じになるか比べる
