/*
**	エスケープシーケンスの確認
*/
public class Sample01_02 {
	public static void main(String args[]){
		System.out.println("\100");									//8進数100の文字@
		System.out.println("\\100");								//\100と表示
		System.out.println("I\'m computer programmar.");			//'確認
		System.out.println("Javaの文字列定数は\"でくくる");			//"確認
		System.out.println("ユニコードの\\u3042は「\u3042」です");	//ユニコード確認
		System.out.println("改行ポイント→\n次の行");				//改行確認
	}
}
