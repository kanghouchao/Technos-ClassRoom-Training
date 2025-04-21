import java.util.Scanner;

public class Pro6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("名前を入力してください");
        String name = sc.nextLine();
        System.out.println("ようこそ「"+name+"」さん");
        sc.close();
    }
}