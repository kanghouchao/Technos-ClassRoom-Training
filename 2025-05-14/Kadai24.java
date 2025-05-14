// ランダムに四則演算の問題出題するプログラムを作成してください。
// この時、解答を入力し正解判定も行えるようにしましょう。
// ※ 数値の範囲は自由とし、少数の判定はしなくていいものとします。

import java.util.Scanner;

public class Kadai24 {
    public static void main(String[] args) {
        // ランダムな数値を生成
        int num1 = (int) (Math.random() * 100);
        int num2 = (int) (Math.random() * 100);
        char operator = getRandomOperator();

        // 問題を出題
        System.out.println(num1 + " " + operator + " " + num2 + " = ?");

        // ユーザーの答えを取得
        Scanner scanner = new Scanner(System.in);
        int userAnswer = scanner.nextInt();

        // 正解を計算
        int correctAnswer = calculate(num1, num2, operator);

        // 正解判定
        if (userAnswer == correctAnswer) {
            System.out.println("正解です！");
        } else {
            System.out.println("不正解です。正しい答えは " + correctAnswer + " です。");
        }

        // スキャナーを閉じる
        scanner.close();
    }

    private static char getRandomOperator() {
        char[] operators = {'+', '-', '*', '/'};
        int randomIndex = (int) (Math.random() * operators.length);
        return operators[randomIndex];
    }

    private static int calculate(int num1, int num2, char operator) {
        switch (operator) {
            case '+':
                return num1 + num2;
            case '-':
                return num1 - num2;
            case '*':
                return num1 * num2;
            case '/':
                if (num2 != 0) {
                    return num1 / num2;
                } else {
                    System.out.println("0で割ることはできません。");
                    return 0; // エラー処理
                }
            default:
                throw new IllegalArgumentException("無効な演算子: " + operator);
        }
    }
}
