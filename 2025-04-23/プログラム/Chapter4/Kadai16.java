import java.util.Scanner;
// 3回連続正解するまでランダムに足し算の問題を出し続けてください
// 出題する数値の範囲は1から9とします。
public class Kadai16 {
    public static void main(String[] args) {
        int correctCount = 0; // 正解数
        int maxCorrectCount = 3; // 最大正解数

        Scanner scanner = new Scanner(System.in);
        while (correctCount < maxCorrectCount) {
            int num1 = (int) (Math.random() * 9) + 1; // 1から9のランダムな数
            int num2 = (int) (Math.random() * 9) + 1; // 1から9のランダムな数
            System.out.print(num1 + " + " + num2 + " = ");
            int answer = scanner.nextInt(); // ユーザーの入力を取得

            if (answer == num1 + num2) {
                System.out.println("正解！");
                correctCount++; // 正解数を増やす
            } else {
                System.out.println("不正解。");
                correctCount = 0; // 正解数をリセット
            }
        }
        scanner.close();
        
        System.out.println("3回連続正解しました。終了します。");
    }
}
