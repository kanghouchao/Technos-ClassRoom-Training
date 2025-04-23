// 1から6の数値をランダムに出力するプログラムを作成してください。
public class Kadai7 {
    public static void main(String[] args) {
        int randomNumber = (int) (Math.random() * 6) + 1;
        System.out.println(randomNumber);
    }
}
