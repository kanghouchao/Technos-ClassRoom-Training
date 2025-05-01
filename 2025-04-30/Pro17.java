import java.util.Scanner;

public class Pro17 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] strs = new String[3];
        System.out.println("3つデータを入力してください");
        for(int i=0; i<3; i++) {
            strs[i] = scanner.nextLine();
        }
        int r = (int)(Math.random()*3);
        System.out.println("「"+strs[r]+"」が選ばれました");
        scanner.close();
    }
}
