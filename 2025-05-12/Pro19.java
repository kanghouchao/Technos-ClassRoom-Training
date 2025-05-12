import java.util.Scanner;

public class Pro19 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("問題数を入力してください");
        int numQuestions = scanner.nextInt();

        int[] a =  new int[numQuestions];
        int[] b =  new int[a.length];
        int[] c =  new int[a.length];
        for (int i = 0; i < a.length; i++) {
            a[i] = (int) (Math.random() * 10);
            b[i] = (int) (Math.random() * 10);
        }

        for (int i = 0; i < a.length; i++) {
            System.out.print((i + 1) + "問目 " + a[i] + " + " + b[i] + " = ");
            c[i] = scanner.nextInt();
        }

        System.out.println("結果は");
        for (int i = 0; i < a.length; i++) {
            System.out.print((i + 1) + "問目 " + a[i] + " + " + b[i] + " = " + c[i]);
            if (a[i] + b[i] == c[i]) {
                System.out.println(" 正解");
            } else {
                System.out.println(" 不正解、正解は" + (a[i] + b[i]));
            }
        }
        scanner.close();
    }
}
