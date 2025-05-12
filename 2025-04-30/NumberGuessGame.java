
/**
 * まずは数当てプログラムの仕様を説明します。
 * 1から100までの乱数を生成する
 * ユーザが数を入力し生成された乱数を当てられたかを判定する
 * 正解なら「正解！」を出力しプログラムを終了
 * 不正解の時、正解が入力値よりも大きい場合「もっと大きいよ」小さい場合「もっと小さいよ」を出力
 * 10回失敗した場合「残念！正解は○○」と答えを出力し強制終了
 */
public class NumberGuessGame {
    public static void main(String[] args) {
        // 1から100までの乱数を生成
        int answer = (int) (Math.random() * 100) + 1;
        int count = 0;
        boolean isCorrect = false;

        // ユーザが数を入力するためのScannerオブジェクトを作成
        java.util.Scanner scanner = new java.util.Scanner(System.in);

        while (count < 10 && !isCorrect) {
            System.out.print("1から100までの数を当ててください: ");
            int guess = scanner.nextInt();
            count++;

            if (guess == answer) {
                System.out.println("正解！");
                isCorrect = true;
            } else if (guess < answer) {
                System.out.println("もっと大きいよ");
            } else {
                System.out.println("もっと小さいよ");
            }
        }

        if (!isCorrect) {
            System.out.println("残念！正解は " + answer + " でした。");
        }

        // Scannerオブジェクトを閉じる
        scanner.close();
    }
}
