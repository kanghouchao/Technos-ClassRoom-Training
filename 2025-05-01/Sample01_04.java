/*
**	整数型のオーバーフロー確認（例外はスローされない）
*/
public class Sample01_04{
	public static void main(String[] args){
		int a=Integer.MAX_VALUE;			//aにintの最大値を格納
		int b=Integer.MIN_VALUE;			//bにintの最小値を格納
		System.out.println("Integer.MAX_VALUE\t" + a);
		System.out.println("Integer.MIN_VALUE\t" + b);
		a++;								//a=a+1;と同様の計算（最大値に1を加える）
		b--;								//b=b-1;と同様の計算（最小値から１を引く）
		System.out.println("Integer.MAX_VALUE+1\t" + a);
		System.out.println("Integer.MIN_VALUE-1\t" + b);
	}
}
