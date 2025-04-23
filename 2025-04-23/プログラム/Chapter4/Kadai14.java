// 数値をN入力しNxNの四角形を出力してください
public class Kadai14 {
    public static void main(String[] args) {
        int n = 5; // ここに任意の数値を入力してください
        int i = 0;
        while (i < n) {
            int j = 0;
            while (j < n) {
                System.out.print("■");
                j++;
            }
            System.out.println();
            i++;
        }
    }
}
