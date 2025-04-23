import java.util.Scanner;

public class Kadai3 {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("今日の天気は？");
        String weather = scanner.nextLine();
        System.out.print("「" + weather + "」です。");
        scanner.close();
    }
}