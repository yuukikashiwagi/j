// 京都大学の入試問題を解いてみよう
// https://cdn-ak.f.st-hatena.com/images/fotolife/s/stchopin/20240227/20240227224037.png
// 問題の写真
// 上のリンクで問題見てください。
// 解いてみよう
void main() {
  print("問１の答えは、${collatz_1()}です。");
  print("問２の答えは、${collatz_2()}です。");
}

int collatz_1() {
  int n = 1;
  while (true) {
    int tmp = n;
    int i = 0;
    while (i < 3) {
      if (tmp % 2 == 0) {
        break;
      } else {
        tmp = (3 * tmp + 1) ~/ 2;
        i++;
      }
    }
    if (i == 3 && tmp % 2 == 1) {
      return n;
    }
    n += 2;
  }
}

int collatz_2() {
  int n = 1;
  while (true) {
    int tmp = n;
    int i = 0;
    while (i < 10) {
      if (tmp % 2 == 0) {
        break;
      } else {
        tmp = (3 * tmp + 1) ~/ 2;
        i++;
      }
    }
    if (i == 10 && tmp % 2 == 1) {
      return n;
    }
    n += 2;
  }
}

