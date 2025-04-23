import java.util.Scanner;

// 入力された文字列が「yes」なら「OK」、「no」なら「NG」、それ以外なら「yesでもnoでもありません」を出力するプログラムを作成してください。
public class Kadai6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("入力してください: ");
        String input = scanner.nextLine();

        if (input.equals("yes")) {
            System.out.println("OK");
        } else if (input.equals("no")) {
            System.out.println("NG");
        } else {
            System.out.println("yesでもnoでもありません");
        }

        scanner.close();
    }
}
