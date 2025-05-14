class Cat {
    
    int age;

    void meow() {
        System.out.println(age + "歳の猫が「にゃー」と鳴きました");
    }

}



public class Main {
    public static void main(String[] args) {
        Cat cat = new Cat();
        cat.age = 3;
        cat.meow();
    }
}