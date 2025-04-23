import java.util.Scanner;

public class Pro14 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while(true) {
            int r = (int)(Math.random()*6+1);
            System.out.println("サイコロは:"+r);
            String in = scanner.nextLine();
            if(in.equals("exit")) {
                break;
            }
        }
        System.out.println("終了");
        scanner.close();
    }
}
