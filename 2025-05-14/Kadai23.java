//1から100の乱数Rを取得し、Rの数が偶数か5の倍数の場合「[R]は偶数か5の倍数です」と表示し、
//そうでない場合はRのみ出力するプログラムを作成してください。
public class Kadai23 {
    public static void main(String[] args) {
        // 1から100の乱数Rを取得
        int R = (int) (Math.random() * 100) + 1;

        // Rが偶数か5の倍数の場合
        if (R % 2 == 0 || R % 5 == 0) {
            System.out.println(R + "は偶数か5の倍数です");
        } else {
            // Rが偶数でも5の倍数でもない場合
            System.out.println(R);
        }
    }
}
