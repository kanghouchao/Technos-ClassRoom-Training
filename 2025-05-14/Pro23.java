import java.util.Scanner;

/**
 * 以下のランダムに四つの真偽値を取得し、以下の論理演算の問題を出題するプログラムを作成して下さい
 * 値１|| !値２ && (値３ || 値４)
 */
public class Pro23 {
    public static void main(String[] args) {
        /**
         * まずboolean型の配列を作成し、ランダムに真偽値を取得します
         * その後、論理演算を行い、結果を表示します
         * 最後に、結果を表示します
         */
        boolean[] values = new boolean[4];
        for (int i = 0; i < values.length; i++) {
            values[i] = (int) (Math.random() * 2) == 0;
        }
        boolean result = values[0] || !values[1] && (values[2] || values[3]);
        // commandで、以上の演算式(真実の数値を含める)を表示して、答えを求める
        System.out.println("以下の論理演算の問題を解いてください");
        System.out.println( values[0] + " || !" + values[1] + " && (" + values[2] + " || " + values[3] + ")");
        Scanner scanner = new Scanner(System.in);
        System.out.print("答えを入力してください (true/false): ");
        boolean userAnswer = scanner.nextBoolean();
        // ユーザーの答えと正解を比較して、結果を表示
        if (userAnswer == result) {
            System.out.println("正解です！");
        } else {
            System.out.println("不正解です。正しい答えは " + result + " です。");
        }
        // scannerを閉じる
        scanner.close();
    }
}
