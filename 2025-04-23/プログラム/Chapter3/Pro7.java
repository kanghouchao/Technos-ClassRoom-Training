package プログラム.Chapter3;
import java.util.Scanner;

/**
 * 新しくScannerのnextInt()という命令を使い数値の入力を受け付けるプログラムを作成する。
 */
public class Pro7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("整数を入力してください");
        int number = scanner.nextInt();
        if(number == 1){
            System.out.println("1が入力されました");
        }
        System.out.println("終了します");
        scanner.close();
    }
}
