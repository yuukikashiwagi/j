// 京都大学の入試問題を解いてみよう
// https://cdn-ak.f.st-hatena.com/images/fotolife/s/stchopin/20240227/20240227224037.png
// 問題の写真
// 上のリンクで問題見てください。
// 解いてみよう

// 問題
// 問１　一問目を解いてみよう
// 問２　二問目を解いてみよう
// 問３　一つの関数で解けるようにしよう
import 'dart:async';
import 'dart:io';

void main() {
  print(collatz());
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

int collatz() {
  int num = int.parse(stdin.readLineSync()!);
  int n = 1;
  while (true) {
    int tmp = n;
    int i = 0;
    while (i < num) {
      if (tmp % 2 == 0) {
        break;
      } else {
        tmp = (3 * tmp + 1) ~/ 2;
        i++;
      }
    }
    if (i == num && tmp % 2 == 1) {
      return n;
    }
    n += 2;
  }
}
// https://www.kyoto-u.ac.jp/ja/admissions/undergrad/past-eq/copyright-policy#:~:text=%E4%BA%AC%E9%83%BD%E5%A4%A7%E5%AD%A6%E5%85%A5%E8%A9%A6%E5%95%8F%E9%A1%8C%E7%AD%89%E3%81%AE%E5%88%A9%E7%94%A8%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6&text=%E5%AD%A6%E9%83%A8%E5%85%A5%E8%A9%A6%E3%81%AE%E8%A9%A6%E9%A8%93%E5%95%8F%E9%A1%8C,%E6%A8%A9%E3%81%8C%E5%B1%9E%E3%81%97%E3%81%A6%E3%81%84%E3%81%BE%E3%81%99%E3%80%82
// 出典を明示するなら、良さそうです。