// 25%の確率で「成功」を出力し75%の確率で「失敗」を出力するプログラムを作成してください。
public class Kadai9 {
    public static void main(String[] args) {
        // 0から99までのランダムな整数を生成
        int randomNumber = (int) (Math.random() * 100);

        // 25%の確率で成功、75%の確率で失敗
        if (randomNumber < 25) {
            System.out.println("成功");
        } else {
            System.out.println("失敗");
        }
    }
}
