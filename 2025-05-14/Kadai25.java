// 数値Nを入力してもらい、Nの倍数のみを出力するプログラムを作成してください。
// ただし、Nの範囲は1以上25以下とし、出力する倍数も25以下の数とします。

// ※ もし入力されたNが1以上25以下出ない場合は「1以上25以下の数を入力してください」と表示させて繰り返して下さい。

import java.util.Scanner;

public class Kadai25 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        // ユーザーからの入力を取得
        // do-whileループを使用して、1以上25以下の数を取得する
        int N;
        do {
            System.out.print("1以上25以下の数を入力してください: ");
            N = scanner.nextInt();
        } while (N < 1 || N > 25);
        // Nの倍数を出力
        System.out.println(N + "の倍数は:");
        for (int i = N; i <= 25; i++) {
            if (i % N == 0) {
                System.out.println(i);
            }
        }
        // スキャナーを閉じる
        scanner.close();
    }
}
