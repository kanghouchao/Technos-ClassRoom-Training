/*
**	基本データ型の最小値と最大値
*/
public class Sample01_03{
	public static void main(String[] args){
		System.out.println("char   値 "  +Character.MIN_VALUE +" ～ "  +Character.MAX_VALUE);
		System.out.println("byte   値 "  +Byte.MIN_VALUE      +" ～ "  +Byte.MAX_VALUE     );
		System.out.println("short  値 "  +Short.MIN_VALUE     +" ～ "  +Short.MAX_VALUE    );
		System.out.println("int    値 "  +Integer.MIN_VALUE   +" ～ "  +Integer.MAX_VALUE  );
		System.out.println("long   値 "  +Long.MIN_VALUE      +" ～ "  +Long.MAX_VALUE     );
		System.out.println("float  値 ±"+Float.MIN_VALUE     +" ～ ±"+Float.MAX_VALUE    );
		System.out.println("double 値 ±"+Double.MIN_VALUE    +" ～ ±"+Double.MAX_VALUE   );
	}
}
