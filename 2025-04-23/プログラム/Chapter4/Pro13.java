package プログラム.Chapter4;
import java.util.Scanner;

public class Pro13 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("正解するまで終わりません");
        int a = (int)(Math.random()*10);
        int b = (int)(Math.random()*10);
        System.out.println(a+"+"+b+"=?");
        int ans = 0;
        do {
            ans = scanner.nextInt();
        } while(ans != a+b);
        System.out.println("正解！");
        scanner.close();
    }
}
