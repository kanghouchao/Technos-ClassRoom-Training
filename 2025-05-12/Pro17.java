import java.util.Scanner;

public class Pro17 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] inputStrings = new String[3];
        System.out.println("三つデータを入力して下さい");
        for (int i = 0; i < inputStrings.length; i++) {
            inputStrings[i] = scanner.nextLine();
        }
        int r = (int) (Math.random() * 3);
        System.out.println("あなたの選んだデータは" + inputStrings[r] + "です");
        scanner.close();
    }
}