/*
**	int型、long型、float型、double型の最大値を比較
*/
public class Sample01_06{
	public static void main(String[] args){
		int		i = 1;		//整数変数（4バイト）初期値１
		long	l = 1;		//整数変数（8バイト）初期値１
		float	f = 1;		//単精度浮動小数変数初期値１
		double	d = 1;		//倍精度浮動小数変数初期値１
		int		cnt;
		for( cnt = 0 ; cnt < 1024 ; cnt++ ){
			System.out.println("2の"+cnt+"乗 : "+i+" : "+l+" : "+f+" : "+d);
			i *= 2; 		//値を2倍する
			l *= 2; 		//値を2倍する
			f *= 2; 		//値を2倍する
			d *= 2; 		//値を2倍する
		}
		System.out.println("2の"+cnt+"乗 : "+i+" : "+l+" : "+f+" : "+d);
	}
}
