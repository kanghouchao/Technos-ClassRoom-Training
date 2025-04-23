import java.util.Scanner;

/**
 * 入力してください
 *[0]
 * ゼロです
 * 入力してください
 * [1]
 * ゼロ以外です
 */
public class Kadai5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("入力してください: ");
        int input = scanner.nextInt();

        if (input == 0) {
            System.out.println("ゼロです");
        } else {
            System.out.println("ゼロ以外です");
        }

        scanner.close();
    }
}
