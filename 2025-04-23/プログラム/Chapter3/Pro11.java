package プログラム.Chapter3;
public class Pro11 {
    public static void main(String[] args) {
        System.out.println("おみくじの結果は");
        int a = (int)(Math.random()*5);
        if(a == 0) {
            System.out.println("大吉");
        } else if(a == 1) {
            System.out.println("中吉");
        } else if(a == 2) {
            System.out.println("小吉");
        } else if(a == 3) {
            System.out.println("凶");
        } else {
            System.out.println("大凶");
        }
    }
}
