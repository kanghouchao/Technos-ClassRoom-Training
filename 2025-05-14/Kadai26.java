// 0から100の乱数Nを取得し、「[N]点」と表示した後、Nが0から59なら「Dランク」60から69なら「Cランク」70から79なら「Bランク」80から89なら「Aランク」90から100の場合は「Sランク」と表示するプログラムを作成してください。
public class Kadai26 {
    public static void main(String[] args) {
        // 0から100の乱数Nを取得
        int N = (int) (Math.random() * 101);

        // Nを表示
        System.out.println(N + "点");

        // Nのランクを判定
        if (N >= 0 && N <= 59) {
            System.out.println("Dランク");
        } else if (N >= 60 && N <= 69) {
            System.out.println("Cランク");
        } else if (N >= 70 && N <= 79) {
            System.out.println("Bランク");
        } else if (N >= 80 && N <= 89) {
            System.out.println("Aランク");
        } else if (N >= 90 && N <= 100) {
            System.out.println("Sランク");
        }
    }
}
