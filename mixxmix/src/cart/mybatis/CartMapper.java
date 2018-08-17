package cart.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import cart.dto.CartDTO;
import product.dto.CategoryDTO;
import product.dto.ProductDTO;

public class CartMapper {
	private static SqlSessionFactory sqlMapper;
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
	public static void insertCart(CartDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			int res = session.insert("insertCart", dto);
			session.commit();
			if(res>0) {
				System.out.println("insert성공");
			}else {
				System.out.println("insert실패");
			}
		}finally {
			session.close();
		}
	}
	public static List<CartDTO> listCart(String m_id) {
		List<CartDTO> cart_list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			cart_list = session.selectList("listCart",m_id);
			return cart_list;
		}finally {
			session.close();
		}
	}
	 public static int deleteCart(String p_name,String p_color,String p_size) {
		 SqlSession session = sqlMapper.openSession();
	      Map<String, String> map = new HashMap<String,String>();
	      map.put("p_name", p_name);
	      map.put("p_color", p_color);
	      map.put("p_size", p_size);
	      try {
	         session.insert("deleteCart",map);
	         session.commit();
	      }finally {
	         session.close();
	      }
	      return 1;
	   }
	 
	public static List<Object> countCart(String p_name, String p_img, String p_size, String p_color) {
		SqlSession session = sqlMapper.openSession();
	      Map<String, String> map = new HashMap<String,String>();
	      map.put("p_name", p_name);
	      map.put("p_color", p_color);
	      map.put("p_size", p_size);
	      map.put("p_img", p_img);
	      List<Object> count = null;
	      try {
	         count = session.selectList("countCart", map);
	         return count;
	      }finally {
	         session.close();
	      }
	     
	}
	public static void updateCart(CartDTO dto,int dbCount) {
		SqlSession session = sqlMapper.openSession();
		String sql = "update cart set p_count="+dto.getP_count()+"+"+dbCount+
				" where p_name='"+dto.getP_name()+"' and p_size='"+dto.getP_size()+
				"' and p_color='"+dto.getP_color()+"'";
				Map<String,Object> map = new HashMap<String,Object>();
		 map.put("sql", sql);
		try {
			
			int res = session.update("updateCart", map);
			session.commit();
			if(res>0) {
				System.out.println("update성공");
			}else {
				System.out.println("update실패");
			}
		}finally {
			session.close();
		}
	}
	public static int getCount(String m_id, String p_name, String p_size, String p_color) {
		SqlSession session = sqlMapper.openSession();
	      Map<String, String> map = new HashMap<String,String>();
	      map.put("p_name", p_name);
	      map.put("p_color", p_color);
	      map.put("p_size", p_size);
	      map.put("m_id", m_id);
	      int count ;
	      try {
	         count = session.selectOne("getCount", map);
	         return count;
	      }finally {
	         session.close();
	      }
	}
	
	public static int selectCount(String m_id, String p_name, String p_size, String p_color) {
	      SqlSession session = sqlMapper.openSession();
	         Map<String, String> map = new HashMap<String,String>();
	         map.put("p_name", p_name);
	         map.put("p_color", p_color);
	         map.put("p_size", p_size);
	         map.put("m_id", m_id);
	         int count ;
	         try {
	            count = session.selectOne("selectCount", map);
	            return count;
	         }finally {
	            session.close();
	         }
	   }
}











