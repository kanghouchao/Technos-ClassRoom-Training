package プログラム.Chapter3;
import java.util.Scanner;

public class Pro8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("1+1=?");
        int a = scanner.nextInt();
        if(a == 2) {
            System.out.println("正解");
        } else {
            System.out.println("不正解");
        }
        scanner.close();
    }
}
