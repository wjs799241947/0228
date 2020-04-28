package cn.softeem.xzms.utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * �Զ���Converter��  : String  --��  Date
 * 	ʵ�ֽӿ� Converter<String, Date>
 * @author Administrator
 *
 */
public class CustomDateConverter implements Converter<String, Date>{

	@Override
	public Date convert(String source) {
		System.out.println(source + "-----------------------");
		if(source != null && !source.equals("")){	
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				return sdf.parse(source);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
	}	
}
