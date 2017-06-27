package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetTime {
	public static String getTime()
	{
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = f.format(date);
		return time;
	}

}
