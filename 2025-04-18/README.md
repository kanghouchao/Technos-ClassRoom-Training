### 質問

問1. プログラムの基となるテキストデータの事を何というでしょうか。
ソースコードです

問2. Java言語のソースコードを実行する前にやる変換作業を何というでしょうか。
コンパイルです

問3. 問2を実行する際、我々は何というプログラムを使って打ち込み実行しているでしょうか。
コマンドプロンプトです

問4. ABC.javaというファイルをコンパイルするためのコマンドを教えてください。
javac ABC.java です

問5. 以下のコードをコンパイル、実行するためのコマンド、画面に表示される文字列を教えてください。

public class Dog {
    public static void main(String[] args) {
        System.out.println("ワン");
    }
}

javac Dog.java
java Dog
ワン

問6. 問5のコードのどこを直したら画面に「ニャー」と表示されるようになるか教えてください。

public class Cat {
    public static void main(String[] args) {
        System.out.println("ニャー");
    }
}

問7. Javaは何メソッドというところから処理が実行するか教えてください。
mainです

問8. 画面に「おはよう」と表示するための1命令を教えてください。
System.out.println("おはよう");

問9. 以下のコードは画面に何と表示されるか教えてください。

public class T9 {
    public static void main(String[] args) {
        System.out.println("96");
        System.out.println("87");
    }
}

96
87