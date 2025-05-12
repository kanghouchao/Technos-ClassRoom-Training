public class Pro18 {
    public static void main(String[] args) {
        String[] lotteryResults = {"あたり", "あたり", "はずれ", "はずれ", "はずれ", "はずれ"};
        for (int i = 0; i < lotteryResults.length; i++) {
            int randomIndex = (int) (Math.random() * lotteryResults.length);
            String result = lotteryResults[randomIndex];
            lotteryResults[randomIndex] = lotteryResults[lotteryResults.length - 1];
            lotteryResults[lotteryResults.length - 1] = result;
        }
        
        for (int i = 0; i < lotteryResults.length; i++) {
            System.out.println("くじ引きの結果: " + lotteryResults[i]);
        }
    }
}
