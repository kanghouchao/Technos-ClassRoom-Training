
// 1x1から始め9x9までの九九の結果を出力してください
public class Kadai12 {
    public static void main(String[] args) {
        int a = 1;
        while (a < 10) {
            int b = 1;
            while (b < 10) {
                System.out.print(a * b + " ");
                b++;
            }
            System.out.println();
            a++;
        }
    }
}
