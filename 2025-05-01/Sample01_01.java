/*
** リテラルの確認
*/
public class Sample01_01{
	public static void main(String[] args){
		System.out.println('1');					//文字定数
		System.out.println("1");					//文字列定数
		System.out.println(1);						//整数定数
		System.out.println(1.0);					//浮動小数点定数
		System.out.println(2147483647);				//intの最大値
		System.out.println(-2147483648);			//intの最小値
	//	System.out.println(2147483648);				//エラー(int型の範囲外)
		System.out.println(2147483648L);			//接尾語Lをつけてlong型
		System.out.println(9223372036854775807L);	//longの最大値
	//	System.out.println(9223372036854775808L);	//エラー(long型の範囲外)
		System.out.println(9223372036854775808.0);	//浮動小数点とする
		System.out.println(9223372036854775808.0F);	//単精度浮動小数点とする
		System.out.println(1E3);					//指数表記
		System.out.println(010);					//８進数
		System.out.println(0x10);					//１６進数
		System.out.println(010.0);					//１０進数扱いされる
	//	System.out.println(0x10.0);					//エラー（16進表現で小数不可）
	}
}
