package プログラム.Chapter3;
import java.util.Scanner;

public class Pro10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("IDを入力してください");
        String id = scanner.nextLine();
        if(id.equals("aaa")) {
            System.out.println("パスワードを入力してください");
            String pass = scanner.nextLine();
            if(pass.equals("bbb")) {
                System.out.println("認証成功");
            } else {
                System.out.println("パスワードが違います");
            }
        } else {
            System.out.println("IDが違います");
        }
        scanner.close();
    }
}
