import java.util.Scanner;

public class Pro21 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("数値を入力してください");
        int n = scanner.nextInt();
        if (n%2 != 0) {
            System.out.println(n + "は奇数です。");
        }else {
            System.out.println(n + "は偶数です。");
        }
        scanner.close();
    }
}