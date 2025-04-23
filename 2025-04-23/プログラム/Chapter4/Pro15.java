package プログラム.Chapter4;
public class Pro15 {
    public static void main(String[] args) {
        int num = (int)(Math.random()*9+1);
        for(int i=1; i<10; i++) {
            System.out.println(num + "x" + i + "=" + num*i);
        }
    }
}
