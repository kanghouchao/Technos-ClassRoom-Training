import java.util.Scanner;

public class Pro9 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int a = (int)(Math.random() * 10);
        int b = (int)(Math.random() * 10);
        System.out.println(a+"+"+b+"=?");

        int c = scanner.nextInt();

        if(a + b == c) {
            System.out.println("正解");
        } else {
            System.out.println("不正解");
        }
        System.out.println("答えは"+(a+b));
        scanner.close();
    }
}
