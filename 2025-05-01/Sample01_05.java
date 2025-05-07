/*
**	倍精度浮動小数点データのビットパターン確認
*/
public class Sample01_05{
	public static void main(String[] args){
		double dbl;
		dbl = 1.0;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = 0.0;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = -0.0;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.MAX_VALUE;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.MIN_VALUE;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.MAX_VALUE * -1;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.MIN_VALUE * -1;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.POSITIVE_INFINITY;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.NEGATIVE_INFINITY;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		dbl = Double.NaN;
		System.out.println("Double: " + dbl);
		System.out.println("\t16進数："+Long.toHexString(Double.doubleToLongBits(dbl)));
		System.out.println(" 1.0 / 0.0     ：" +  1.0/0.0);
		System.out.println("-1.0 / 0.0     ：" + -1.0/0.0);
		System.out.println(" 0.0 / 0.0     ：" +  0.0/0.0);
		System.out.println("Math.sqrt( 2.0)：" + Math.sqrt(2.0));
		System.out.println("Math.sqrt(-2.0)：" + Math.sqrt(-2.0));
	}
}
