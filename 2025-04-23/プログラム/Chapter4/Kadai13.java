import java.util.Scanner;
// 数値を入力し、その数値回さらに数値を入力させその合計を出力してください。
public class Kadai13 {
    public static void main(String[] args) {
        Scanner sc = new java.util.Scanner(System.in);
        System.out.print("数値を入力してください: ");
        int a = sc.nextInt();
        int sum = 0;
        for (int i = 0; i < a; i++) {
            System.out.print("数値を入力してください: ");
            sum += sc.nextInt();
        }
        System.out.println("合計は" + sum + "です。");
        sc.close();
    }
}
