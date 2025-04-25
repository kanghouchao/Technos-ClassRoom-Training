import java.util.Scanner;
// 数値をN入力しNxNの四角形を出力してください
public class Kadai14 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
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
        scanner.close();
    }
}
