package order.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class OrderMapper {
	private static SqlSessionFactory sqlMapper;
	   //xml파일불러내기위함
	   static {
	      try {
	         String resource = "Configuration.xml";
	         Reader reader = Resources.getResourceAsReader(resource);
	         sqlMapper = new SqlSessionFactoryBuilder().build(reader);
	      }catch(IOException e) {
	         throw new RuntimeException("Something bad happened while building the "
	               + "SqlSessionFactoryBuilder instance." + e, e);
	      }
	   }

}
