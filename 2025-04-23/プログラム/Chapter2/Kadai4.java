import java.util.Scanner;

public class Kadai4 {
    /**
     * 名前は？
    [池田]
    出身は？
    [千葉県]
    千葉県出身の池田さん
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("名前は？");
        String name = scanner.nextLine();
        System.out.println("出身は？");
        String birthplace = scanner.nextLine();
        System.out.println(birthplace + "出身の" + name + "さん");
        scanner.close();
    }
}
