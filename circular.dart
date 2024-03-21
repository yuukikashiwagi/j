bool isPalindrome(String str) {
  String reversedStr = str.split('').reversed.join('');
  return str == reversedStr;
}

bool isPalindromeFor(String str) {
  for (int i = 0; i < str.length ~/ 2; i++) {
    if (str[i] != str[str.length - i - 1]) {
      return false;
    }
  }
  return true;
}
// ヒント
// 小数点以下の切り捨て　〜
// forぶんを用いて、後ろからと前からで比べていく

// 別解
// はじめに全部ひっくり返してから同じになるか比べる
