
import java.util.Scanner;
// 2回数値を入力し、合計が10になれば「OK」ならなければ「合計が○○で、10ではありません」と出力してください
public class Kadai8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // 1回目の数値を入力
        System.out.print("1回目の数値を入力してください: ");
        int firstNumber = scanner.nextInt();

        // 2回目の数値を入力
        System.out.print("2回目の数値を入力してください: ");
        int secondNumber = scanner.nextInt();

        // 合計を計算
        int sum = firstNumber + secondNumber;

        // 合計が10かどうかをチェック
        if (sum == 10) {
            System.out.println("OK");
        } else {
            System.out.println("合計が" + sum + "で、10ではありません");
        }

        scanner.close();
    }
}
