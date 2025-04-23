// 数値をN入力しN段あるピラミッドを出力してください。
public class Kadai15 {
    public static void main(String[] args) {
        int n = 5; // ここに任意の数値を入力してください
        int i = 0;
        while (i < n) {
            int j = 0;
            while (j < n - i - 1) {
                System.out.print(" ");
                j++;
            }
            j = 0;
            while (j < 2 * i + 1) {
                System.out.print("■");
                j++;
            }
            System.out.println();
            i++;
        }
    }
}
