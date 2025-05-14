import java.util.Scanner;
// 変数
public class Kadai4 {

    public static void main(String[] args) {
        int a = 10;
        Scanner s = new Scanner(System.in);
        System.out.println("名前は？");
        String name = s.nextLine();
        System.out.println("出身は？");
        String birthplace = s.nextLine();
        System.out.println(birthplace + "出身の" + name + "さん");
        s.close();
    }
}
