package プログラム.Chapter4;
import java.util.Scanner;

public class Pro16 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("数値を入力してください");
        int num = scanner.nextInt();
        for(int i=0; i<num; i++) {
            for(int j=0; j<num; j++) {
                System.out.print("■");
            }
            System.out.println();
        }
        scanner.close();
    }

}
