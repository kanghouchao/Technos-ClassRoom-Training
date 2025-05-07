import java.util.Scanner;

public class Kazuate {
    public static void main(String[] args) {
        int answer = (int) (Math.random() * 100) + 1;
        int attempts = 0;
        boolean correct = false;

        System.out.println("1から100の数値を入力してください");

        Scanner scanner = new Scanner(System.in);
        while (attempts < 10 && !correct) {
            attempts++;
            System.out.println(attempts + "回目");
            System.out.print("[");
            int guess = scanner.nextInt();
            System.out.print("\033[1A");
            System.out.print("\033[2K");
            System.out.println("[" + guess + "]");

            if (guess == answer) {
                System.out.println("正解！");
                correct = true;
            } else if (guess < answer) {
                System.out.println("もっと大きいよ");
            } else {
                System.out.println("もっと小さいよ");
            }
        }
        scanner.close();

        if (!correct) {
            System.out.println("残念！正解は" + answer);
        }
    }
}
