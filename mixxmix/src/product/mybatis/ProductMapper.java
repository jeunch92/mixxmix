package product.mybatis;
import java.io.IOException;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import color.dto.ColorDTO;
import member.dto.MemberDTO;
import product.dto.*;
public class ProductMapper {
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
	   
	public static int insertCategory(CategoryDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.insert("insertCategory",dto);
			session.commit();
		}finally {
			session.close();
		}
		return 1;
	}
	
	public static List<CategoryDTO> listCategory(){
		List<CategoryDTO> c_list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			c_list = session.selectList("listCategory");
			return c_list;
		}finally {
			session.close();
		}
	}
	
	public static int insertProduct(ProductDTO dto) {
		SqlSession session = sqlMapper.openSession();
		try {
			session.insert("insertProduct",dto);
			session.commit();
		}finally {
			session.close();
		}
		return 1;
	}
	
	public static List<ProductDTO> listProduct(){
		List<ProductDTO> list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			list = session.selectList("listProduct");
			return list;
		}finally {
			session.close();
		}
	}
	
	public static List<ColorDTO> listColor(){
		return null;
		
	}
	
	public static List<ProductDTO> listProductAll(){
		List<ProductDTO> list = null;
		SqlSession session = sqlMapper.openSession();
		try {
			list = session.selectList("listProductAll");
			return list;
		}finally {
			session.close();
		}
	}
	
	public static ProductDTO getProduct(int p_num) {
	      /*SqlSession session = sqlMapper.openSession();
	      Map<String, String> map = new HashMap<String,String>();
	      ProductDTO dto = null;
	      map.put("sql",p_num);
	      try {
	         dto = session.selectOne("getProduct", map);
	         return dto;
	      }finally {
	         session.close();
	      }*/
		SqlSession session = sqlMapper.openSession();
	       ProductDTO dto = null;
	       try {
	         dto = session.selectOne("getProduct", p_num);
	         session.commit();
	         return dto;
	       }finally {
	          session.close();
	       }
	   }
	
	public static List<ProductDTO> listProductByCate_new(String cate_str){
        List<ProductDTO> list = null;
        SqlSession session = sqlMapper.openSession();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("cate_str", Integer.parseInt(cate_str));
        try {
           list = session.selectList("listProductByCate_new",map);
           return list;
        }finally {
           session.close();
        }
     }
  
  public static List<ProductDTO> listProductByCate_best(String cate_str){
        List<ProductDTO> list = null;
        SqlSession session = sqlMapper.openSession();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("cate_str", Integer.parseInt(cate_str));
        try {
           list = session.selectList("listProductByCate_best",map);
           return list;
        }finally {
           session.close();
        }
     }
  
  public static List<ProductDTO> listProductByCate_low(String cate_str){
        List<ProductDTO> list = null;
        SqlSession session = sqlMapper.openSession();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("cate_str", Integer.parseInt(cate_str));
        try {
           list = session.selectList("listProductByCate_low",map);
           return list;
        }finally {
           session.close();
        }
     }
  
  public static List<ProductDTO> listProductByCate_high(String cate_str){
        List<ProductDTO> list = null;
        SqlSession session = sqlMapper.openSession();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("cate_str", Integer.parseInt(cate_str));
        try {
           list = session.selectList("listProductByCate_high",map);
           return list;
        }finally {
           session.close();
        }
     }
  public static int deleteProduct(int p_num) {
      SqlSession session = sqlMapper.openSession();
      try {
         session.insert("deleteProduct",p_num);
         session.commit();
      }finally {
         session.close();
      }
      return 1;
   }
  
  public static int checkStock(ColorDTO dto) {
      SqlSession session = sqlMapper.openSession();
      try {
         int check = session.selectOne("checkStock", dto);
         return check;
      }finally {
         session.close();
      }
   }
   
   public static int addInsertProduct(String sql) {
      SqlSession session = sqlMapper.openSession();
      HashMap<String, String> map = new HashMap<String, String>();
      map.put("sql", sql);
      try {
         int res = session.update("addInsertProduct", map);
         session.commit();
         return res;
      }finally {
         session.close();
      }
   }
   
   public static List<ProductDTO> getColor(String p_name) {
       SqlSession session = sqlMapper.openSession();
       HashMap<String, String> map = new HashMap<String, String>();
       map.put("sql", p_name);
       List<ProductDTO> list = null;
       try {
          list = session.selectList("getColor", map);
         session.commit();
         return list;
       }finally {
          session.close();
       }
    }
 
   public static List<String> onlyColor(int p_num) {
       SqlSession session = sqlMapper.openSession();
       List<String> list = null;
       try {
          list = session.selectList("onlyColor", p_num);
         session.commit();
         return list;
       }finally {
          session.close();
       }
    }
   public static List<String> onlySize(String p_name) {
       SqlSession session = sqlMapper.openSession();
       HashMap<String, String> map = new HashMap<String, String>();
       map.put("sql", p_name);
       List<String> list = null;
       try {
          list = session.selectList("onlySize", map);
         session.commit();
         return list;
       }finally {
          session.close();
       }
    }
 
 /*color추가한부분!!!!!!!!!!!!!!!!!!!!!!!*/
 public static int insertColor(ColorDTO dto) {
    SqlSession session = sqlMapper.openSession();
    try {
       session.insert("insertColor",dto);
       session.commit();
    }finally {
       session.close();
    }
    return 1;
 }
 /*color추가한부분!!!!!!!!!!!!!!!!!!!!!!!*/
   

 
 public static List<JoayoDTO> listJoayo(){
      List<JoayoDTO> j_list = null;
      SqlSession session = sqlMapper.openSession();
      try {     
         j_list = session.selectList("listJoayo");
         return j_list;
      }finally {
         session.close();
      }
   }
 
 public static boolean Prevent_duplication(JoayoDTO dto) {    
         List<JoayoDTO> j_list = null;
         SqlSession session = sqlMapper.openSession();
         try {
            System.out.println("좋아요 짱시룸2");
            j_list = session.selectList("Prevent_duplication", dto);
            if(j_list.size()>0) {
               return true;
            }else {
               return false;
            }
         }finally {
            session.close();
         }
      }

 public static int likeTB_delete(JoayoDTO dto) {
    SqlSession session = sqlMapper.openSession();
     try {
        session.insert("deleteJoayo",dto);
        session.commit();
     }finally {
        session.close();
     }
     return 1;
 }

   
   public static int likeTB_insert(JoayoDTO dto) {
      SqlSession session = sqlMapper.openSession();
      try {
         session.insert("insertJoayo",dto);
         session.commit();
      }finally {
         session.close();
      }
      return 1;
   }
   
   public static int getP_num(String p_code) {
       SqlSession session = sqlMapper.openSession();
       Map<String, String> map = new HashMap<String,String>();
       ProductDTO dto = null;
       map.put("sql", p_code);
       try {
          dto = session.selectOne("getP_num", map);
          return dto.getP_num();
       }finally {
          session.close();
       }
    }
   
   public static List<ColorDTO> getDetail(String p_num,String col_name) {
       SqlSession session = sqlMapper.openSession();
       HashMap<String, String> map = new HashMap<String, String>();
        map.put("p_num", p_num);
        map.put("col_name", col_name);
       try {
          List<ColorDTO> detailList = session.selectList("getDetail",map);
          return detailList;
       }finally {
          session.close();
       }
    }
   
   public static List<ColorDTO> getColorList(int p_num) {
       SqlSession session = sqlMapper.openSession();
       try {
          List<ColorDTO> detailList = session.selectList("getColorList",p_num);
          if(detailList==null) {
             System.out.println("colorList가 널입니다요");
          }
          return detailList;
       }finally {
          session.close();
       }
    }
}
